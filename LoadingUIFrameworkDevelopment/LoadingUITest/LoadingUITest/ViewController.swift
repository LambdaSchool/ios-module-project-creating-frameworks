//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Wyatt Harrell on 4/22/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

    @IBOutlet weak var downloadButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadButton.layer.cornerRadius = 8
    }

    @IBAction func downloadButtonTapped(_ sender: Any) {
        
    }
}

