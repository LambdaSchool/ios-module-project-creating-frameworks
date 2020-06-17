//
//  FrameworkViewController.swift
//  LoadingUITests
//
//  Created by Enzo Jimenez-Soto on 6/17/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

import UIKit
import LoadingUI

class FrameworkViewController: UIViewController {
    
    @IBOutlet weak var loadingView: UIView!
    
    let loadingVC = LoadingViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingVC.setupView(with: loadingView)
        loadingVC.startLoading()
    }
    override func viewWillDisappear(_ animated: Bool) {
        loadingVC.stopLoading()
    }
}
