//
//  ViewController.swift
//  TestApp
//
//  Created by Bradley Diroff on 4/22/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import UIKit
import WaitingFramework

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let controller = LoadingViewController()
        show(controller, sender: sender)
    }
    
    
}

