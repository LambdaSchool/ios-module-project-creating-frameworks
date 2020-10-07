//
//  LoadingViewController.swift
//  LoadingUIFrameworkDevelopment
//
//  Created by Norlan Tibanear on 10/5/20.
//  Copyright © 2020 Norlan Tibanear. All rights reserved.
//

import UIKit
import LoadingUI

class LoadingViewController: UIViewController {
    
//    let loaderAnimation = IndeterminateLoadingView()

    override func viewDidLoad() {
        super.viewDidLoad()

        startAnimating()
    }
    
    func startAnimating() {
        let loader = IndeterminateLoadingView(frame: self.view.frame)
        view.addSubview(loader)
        loader.startAnimating()
    }
  

}//
