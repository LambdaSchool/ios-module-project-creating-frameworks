//
//  LoadingViewController.swift
//  LoadUIFramework
//
//  Created by Chris Gonzales on 3/25/20.
//  Copyright © 2020 Chris Gonzales. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {

    private let loadingView = IndeterminateLoadingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        loadingView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loadingView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        loadingView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,
            constant: 8).isActive = true
        loadingView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                                              constant: -8)
        loadingView.heightAnchor.constraint(equalTo: loadingView.widthAnchor,
                                            multiplier: 1,
                                            constant: 0)
    }
    
    public func startAnimation() {
        loadingView.startAnimating()
    }
    
    public func stopAnimation() {
        loadingView.stopAnimating()
    }
    
}
