//
//  LoadingViewController.swift
//  LoadingUIFramework
//
//  Created by Matthew Martindale on 6/9/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        startLoadingUI()
    }

    public func startLoadingUI() {
        let loadingUI = IndeterminateLoadingView(frame: self.view.frame)
        view.addSubview(loadingUI)
        loadingUI.startAnimating()
    }
    
}
