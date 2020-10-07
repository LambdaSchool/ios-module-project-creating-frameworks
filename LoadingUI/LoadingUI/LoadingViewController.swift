//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Rob Vance on 10/5/20.
//

import UIKit

class LoadingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        showAnimation()
        // Do any additional setup after loading the view.
    }
    private func showAnimation() {
        let animation = InderteminateLoadingViewController(frame: self.view.frame)
        view.addSubview(animation)
        animation.startAnimating()
    }
}
