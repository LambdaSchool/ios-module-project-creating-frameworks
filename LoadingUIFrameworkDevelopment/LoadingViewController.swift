//
//  LoadingViewController.swift
//  LoadingUIFrameworkDevelopment
//
//  Created by Kelson Hartle on 6/17/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

import UIKit

open class LoadingViewController: UIViewController {
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        createAnimation()
        indeterminateLoading.center = view.center
    }

    //create stubs to use the loading animation in other projects.
    
    private var indeterminateLoading = IndeterminateLoadingView()
    
    private func createAnimation() {
        let rectangle = CGRect(x: 30, y: 30, width: 150, height: 125)
        indeterminateLoading = IndeterminateLoadingView(frame: rectangle)
        indeterminateLoading.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(indeterminateLoading)
    }
    
    public func startAnimating() {
        indeterminateLoading.startAnimating()
    }
   
    public func stopAnimating() {
        indeterminateLoading.stopAnimating()
    }
    
}
