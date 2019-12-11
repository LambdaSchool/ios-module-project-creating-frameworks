//
//  ViewController.swift
//  FrameworkDemo
//
//  Created by John Kouris on 12/10/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    let loadingVC = LoadingViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showLoadingTapped(_ sender: Any) {
        loadingVC.modalPresentationStyle = .fullScreen
        present(loadingVC, animated: true, completion: nil)
    }
    
}

