//
//  ViewController.swift
//  LoadingUISDK
//
//  Created by Matthew Martindale on 6/8/20.
//  Copyright © 2020 Matthew Martindale. All rights reserved.
//

import UIKit
import LoadingUIFramework

class ViewController: UIViewController {

    @IBOutlet weak var loadingUIButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingUIButton.layer.cornerRadius = loadingUIButton.frame.height / 2
    }


}

