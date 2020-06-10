//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Claudia Contreras on 6/9/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    @IBOutlet var loadViewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showLoadingView" {
            guard let destinationVC = segue.destination as? LoadingViewController else { return }
            destinationVC.view = IndeterminateLoadingView()
        }
    }

}

