//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Vici Shaweddy on 1/1/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loadingPressed(_ sender: Any) {
        let vc = LoadingViewController()
        self.present(vc, animated: true, completion: nil)
    }
}

