//
//  LoadingViewController.swift
//  LoadingUIFramework
//
//  Created by Shawn James on 5/21/20.
//  Copyright © 2020 Shawn James. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
    // MARK: - Lifecycle
    public override func viewDidLoad() {
        super.viewDidLoad()
        showLoadingAnimation()
    }
    
    // MARK: - Methods
    private func showLoadingAnimation() {
        let loadingAnimation = IndeterminateLoadingView(frame: self.view.frame)
        view.addSubview(loadingAnimation)
        loadingAnimation.startAnimating()
    }
    
}
