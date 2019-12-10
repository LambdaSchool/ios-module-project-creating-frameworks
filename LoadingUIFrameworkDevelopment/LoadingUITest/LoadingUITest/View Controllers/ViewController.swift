//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Bobby Keffury on 12/10/19.
//  Copyright © 2019 Bobby Keffury. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LoadingDetailView" {
//            if let loadingVC = segue.destination as? LoadingViewController {
//                 // When button is tapped, begin animation.
//            }
        }
    }
    
    
}
