//
//  ViewController.swift
//  WhatLoadingSingleApp
//
//  Created by Aaron Cleveland on 2/26/20.
//  Copyright © 2020 Aaron Cleveland. All rights reserved.
//

import UIKit
import WhatLoading

class ViewController: LoadingViewController {
    
    @IBOutlet weak var greenView: UIView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        load(on: greenView)
    }
}

