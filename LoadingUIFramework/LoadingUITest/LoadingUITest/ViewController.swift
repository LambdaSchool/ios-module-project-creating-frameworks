//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Ian French on 8/11/20.
//  Copyright © 2020 Ian French. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {



    let loadingViewController = LoadingViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadingViewController.initiateLoadingGraphic()
    }

        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)

            loadingViewController.stopLoadingGraphic()
      }
}

