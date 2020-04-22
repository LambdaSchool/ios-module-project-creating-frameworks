//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Shawn Gee on 4/22/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        present(LoadingViewController(), animated: true)
    }
    
    
}

