//
//  ViewController.swift
//  LoadingUITest
//
//  Created by patelpra on 6/16/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

import UIKit
import LoadingUI


class ViewController: UIViewController {
    
    let loadingViewController = LoadingViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func startLoading(_ sender: Any) {
        present(loadingViewController, animated: true, completion: nil)
    }
    
}

