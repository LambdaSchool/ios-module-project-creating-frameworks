//
//  ViewController.swift
//  FrameworkDemo
//
//  Created by Thomas Dye on 6/9/20.
//  Copyright © 2020 Thomas Dye. All rights reserved.
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

