//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Mark Gerrior on 4/22/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadingUIView = LoadingUIViewController(frame: CGRect(x: 20, y: 148, width: 100, height: 100))
        // Set autoresizing mask to false
    }

    // MARK: - Actions
    
    @IBAction func startButton(_ sender: Any) {
        loadingUIView.show()
    }
    
    @IBAction func stopButton(_ sender: Any) {
        loadingUIView.hide()
    }
    
    // MARK: - Outlets
    
    @IBOutlet var loadingUIView: LoadingUIViewController!
}

