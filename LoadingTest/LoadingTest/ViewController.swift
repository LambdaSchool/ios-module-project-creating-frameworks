//
//  ViewController.swift
//  LoadingTest
//
//  Created by denis cedeno on 5/3/20.
//  Copyright © 2020 DenCedeno Co. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    let loadingVC = LoadingViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadingVC.embed(in: view, parent: self)
    }

    @IBAction func toggle(_ sender: Any) {
        loadingVC.isAnimating = !loadingVC.isAnimating
    }
    

}

