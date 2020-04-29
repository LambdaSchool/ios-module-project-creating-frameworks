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
    
    public let loadingView = IndeterminateLoadingView()
    
    // If loadingViewOrigin is set to nil, the loadingView's center will be constrained to the center of its superview
    public var loadingViewOrigin: CGPoint? {
        didSet {
            guard isViewLoaded else { return }
            updateLoadingViewPosition()
        }
    }
    
    public var loadingViewCircleDiameter: CGFloat = 100 {
        didSet {
            guard isViewLoaded else { return }
            updateLoadingViewSize()
        }
    }
    
    private var loadingViewCenterXConstraint: NSLayoutConstraint!
    private var loadingViewCenterYConstraint: NSLayoutConstraint!
    
    // MARK: - View Controller Lifecycle

    public override func viewDidLoad() {
        super.viewDidLoad()

        setupLoadingView()
    }
    
    // MARK: - Methods

    private func setupLoadingView() {
        guard isViewLoaded else { return }
        
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        loadingViewCenterXConstraint = loadingView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        loadingViewCenterXConstraint = loadingView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
