//
//  ViewController.swift
//  Creating Frameworks
//
//  Created by Jake Connerly on 10/16/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit
import LodingUI

class ViewController: UIViewController  {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLoadingWheel()
    }
    
    
    func setUpLoadingWheel() {
        let loadingWheel = IndeterminateLoadingView(frame: CGRect(x: view.center.x, y: view.center.y, width: 100, height: 100))
        view.addSubview(loadingWheel)
        loadingWheel.translatesAutoresizingMaskIntoConstraints = false
    }

}

