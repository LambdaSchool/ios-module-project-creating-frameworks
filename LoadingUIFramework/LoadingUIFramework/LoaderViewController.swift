//
//  LoaderViewController.swift
//  LoadingUIFramework
//
//  Created by Sal B Amer on 4/29/20.
//  Copyright © 2020 Sal B Amer. All rights reserved.
//

import UIKit

class LoaderViewController: UIViewController {

     public var loadingDuration: TimeInterval = 5
     public var indefiniteLoadingDuration = false
    
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
    
    private let loadingView = IndeterminateLoadingView()
    private var loadingViewCenterXConstraint: NSLayoutConstraint!
    private var loadingViewCenterYConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLoadingView()
        startLoadingAnimation()
        // Do any additional setup after loading the view.
    }
    
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
