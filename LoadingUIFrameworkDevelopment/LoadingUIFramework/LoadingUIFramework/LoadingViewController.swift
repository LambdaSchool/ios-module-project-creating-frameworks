//
//  LoadingViewController.swift
//  LoadingUIFramework
//
//  Created by Lambda_School_Loaner_204 on 12/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

open class LoadingViewController: UIViewController {
    
    private var indeterminateLoading: IndeterminateLoadingView!
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        indeterminateLoading.center = view.center
    }
    
    private func updateViews() {
        let rect = CGRect(x: 0, y: 0, width: 200, height: 200)
        indeterminateLoading = IndeterminateLoadingView(frame: rect)
        indeterminateLoading.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(indeterminateLoading)
    }
    
    public func startAnimation() {
        indeterminateLoading.startAnimating()
    }
    
    public func stopAnimation() {
        indeterminateLoading.stopAnimating()
    }
}
