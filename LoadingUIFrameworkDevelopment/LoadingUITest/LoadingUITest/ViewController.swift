//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Ciara Beitel on 10/16/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func frameworkButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "presentLoadingModallySegue", sender: sender)
    }
    
}
