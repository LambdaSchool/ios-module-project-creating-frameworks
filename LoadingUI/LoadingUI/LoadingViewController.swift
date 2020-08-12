//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Rob Vance on 8/11/20.
//  Copyright © 2020 Robs Creations. All rights reserved.
//

import UIKit

 class LoadingViewController: UIViewController {

     override func viewDidLoad() {
        super.viewDidLoad()
        showAnimation()

        // Do any additional setup after loading the view.
    }

    private func showAnimation() {
        let animation = IndeterminateLoadingView(frame: self.view.frame)
        view.addSubview(animation)
        animation.startAnimating()
    }

}
