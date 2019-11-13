//
//  ViewController.swift
//  LoadingApp
//
//  Created by Isaac Lyons on 11/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import Loading

class ViewController: UIViewController {
    
    let loadingVC = LoadingViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showLoading(_ sender: UIButton) {
        present(loadingVC, animated: true, completion: nil)
        loadingVC.setColor(UIColor.red.cgColor)
    }
    
}

