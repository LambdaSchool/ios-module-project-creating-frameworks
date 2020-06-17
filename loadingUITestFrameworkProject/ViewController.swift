//
//  ViewController.swift
//  loadingUITestFrameworkProject
//
//  Created by Kelson Hartle on 6/16/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

import UIKit
import LoadingUIFrameworkDevelopment

class LoadingAnimationViewController: LoadingViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startAnimating()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        stopAnimating()
    }
    

    

}

