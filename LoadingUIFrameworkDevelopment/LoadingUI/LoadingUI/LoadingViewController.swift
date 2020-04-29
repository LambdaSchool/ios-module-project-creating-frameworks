//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by David Wright on 4/28/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

import UIKit

/// A view controller with a circular loading animation.
public class LoadingViewController: UIViewController {
    
    // MARK: - Properties
    
    /// The duration the LoadingViewController will be presented on the screeen.
    public var loadingDuration: TimeInterval = 3
    
    /// When indefiniteLoadingDuration is set to 'true', the loading animation will continue until the view controller is dismissed
    public var indefiniteLoadingDuration = false
    
    /// The origin of the loadingView which contains the loading animation.
    /// If loadingViewOrigin is set to nil, the loadingView's center will be constrained to the center of its superview.
    public var loadingViewOrigin: CGPoint? {
        didSet {
            guard isViewLoaded else { return }
            updateLoadingViewPosition()
        }
    }
    
    /// The diameter of the circular loading graphic.
    public var loadingViewCircleDiameter: CGFloat = 100 {
        didSet {
            guard isViewLoaded else { return }
            updateLoadingViewSize()
        }
    }
    
    private let loadingView = IndeterminateLoadingView()
    private var loadingViewCenterXConstraint: NSLayoutConstraint!
    private var loadingViewCenterYConstraint: NSLayoutConstraint!
    
    // MARK: - View Controller Lifecycle

    public override func viewDidLoad() {
        super.viewDidLoad()

        setupLoadingView()
        startLoadingAnimation()
    }
    
    // MARK: - Private Methods

    private func setupLoadingView() {
        guard isViewLoaded else { return }
        
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        loadingViewCenterXConstraint = loadingView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        loadingViewCenterYConstraint = loadingView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        view.addSubview(loadingView)
        
        updateLoadingViewSize()
        updateLoadingViewPosition()
    }
    
    private func updateLoadingViewPosition() {
        if let origin = loadingViewOrigin {
            loadingViewCenterXConstraint.isActive = false
            loadingViewCenterYConstraint.isActive = false
            loadingView.frame.origin = origin
        } else {
            loadingViewCenterXConstraint.isActive = true
            loadingViewCenterYConstraint.isActive = true
        }
        view.layoutIfNeeded()
    }
    
    private func updateLoadingViewSize() {
        loadingView.frame.size = CGSize(width: loadingViewCircleDiameter, height: loadingViewCircleDiameter)
        view.layoutIfNeeded()
    }
    
    private func startLoadingAnimation() {
        loadingView.stopAnimating()
        loadingView.startAnimating()
                
        if !indefiniteLoadingDuration {
            DispatchQueue.main.asyncAfter(deadline: .now() + loadingDuration) {
                self.loadingView.stopAnimating()
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
}
