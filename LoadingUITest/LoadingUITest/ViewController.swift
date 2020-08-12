//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Morgan Smith on 8/11/20.
//  Copyright © 2020 Morgan Smith. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func startAnimating(_ sender: UIButton) {
        let loadingViewController = LoadingViewController()
        self.present(loadingViewController, animated:true, completion:nil)
    }


}

