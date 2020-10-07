//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by Bohdan Tkachenko on 10/6/20.
//

import UIKit
import LoadingUI

class LoadingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presentAnimation()
    }
    
    // MARK: - Private
    private func presentAnimation() {
        let animation = IndeterminateLoadingView(frame: self.view.frame)
        view.addSubview(animation)
        animation.startAnimating()
    }
}

