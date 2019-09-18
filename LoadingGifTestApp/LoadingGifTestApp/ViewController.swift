//
//  ViewController.swift
//  LoadingGifTestApp
//
//  Created by Bradley Yin on 9/18/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import UIKit
import LoadingGif

class ViewController: UIViewController {
    @IBOutlet weak var toggleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toggleButtonTapped(_ sender: Any) {
        let loadingVC = LoadingViewController()
        self.present(loadingVC, animated: true)
    }
    
}

