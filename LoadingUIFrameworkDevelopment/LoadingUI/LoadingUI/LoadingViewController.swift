//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Harmony Radley on 6/18/20.
//  Copyright © 2020 Harmony Radley. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {

    private var indterminateLoadingView = IndeterminateLoadingView()

    override func viewDidLoad() {
        super.viewDidLoad()
        newAnimation()
        indterminateLoadingView.center = view.center
    }
    

    private func newAnimation() {
        let bounds = CGRect(x: 25, y: 25, width: 125, height: 100)
        self.indterminateLoadingView = IndeterminateLoadingView(frame: bounds)
        indterminateLoadingView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(indterminateLoadingView)
    }

    public func startSpinningCircle() {
        indterminateLoadingView.startAnimating()
    }

    public func stopSpinningCircle() {
        indterminateLoadingView.stopAnimating()
        indterminateLoadingView.removeFromSuperview()
    }

}
