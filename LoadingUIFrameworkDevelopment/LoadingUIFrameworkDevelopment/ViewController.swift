//
//  ViewController.swift
//  LoadingUIFrameworkDevelopment
//
//  Created by Elizabeth Wingate on 3/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

    let loadingVC = LoadingViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showLoadingTapped(_ sender: Any) {
        loadingVC.modalPresentationStyle = .fullScreen
        present(loadingVC, animated: true, completion: nil)
    }
}

