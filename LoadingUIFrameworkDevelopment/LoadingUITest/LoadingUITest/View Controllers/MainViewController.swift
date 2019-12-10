//
//  MainViewController.swift
//  LoadingUITest
//
//  Created by Bobby Keffury on 12/10/19.
//  Copyright © 2019 Bobby Keffury. All rights reserved.
//

import UIKit
import LoadingUI

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LoadingDetailView" {
            if let loadingVC = segue.destination as? LoadingViewController {
                loadingVC.beginAnimation()
            }
        }
    }
    
    
}
