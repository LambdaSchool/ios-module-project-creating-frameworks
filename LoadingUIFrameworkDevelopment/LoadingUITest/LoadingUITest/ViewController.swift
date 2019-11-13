//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Gi Pyo Kim on 11/13/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    let loadingViewController = LoadingViewController()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func startLoading(_ sender: Any) {
        present(loadingViewController, animated: true, completion: nil)
    }
}

