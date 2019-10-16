//
//  ModalViewController.swift
//  LoadingUITest
//
//  Created by Ciara Beitel on 10/16/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

import UIKit
import LoadingUI

class ModalViewController: UIViewController {
    
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
