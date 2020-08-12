//
//  LoadingViewController.swift
//  LoadingUIFrameworkDevelopment
//
//  Created by Clayton Watkins on 8/11/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
//

import UIKit
import LoadingUI

class LoadingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        presentAnimation()
    }
    
    private func presentAnimation() {
        let animation = IndeterminateLoadingView(frame: self.view.frame)
        view.addSubview(animation)
        animation.startAnimating()
    }
}
