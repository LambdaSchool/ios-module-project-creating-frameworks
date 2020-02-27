//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Jorge Alvarez on 2/26/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

import Foundation
import UIKit
import LoadingUI

class ViewController: UIViewController {

    @IBOutlet weak var buttonLabel: UIButton!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let loadingView = IndeterminateLoadingView()
        loadingView.frame = CGRect(x: 200, y: 500, width: 50, height: 50)
        self.view.addSubview(loadingView)
        buttonLabel.setTitle("Sending Money...", for: .normal)
        loadingView.startAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

