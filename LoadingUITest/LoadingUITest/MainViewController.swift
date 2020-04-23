//
//  MainViewController.swift
//  LoadingUITest
//
//  Created by Lambda_School_Loaner_268 on 4/23/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit
import LoadingUI

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var MainView: IndeterminateLoadingView!
    
    @IBAction func animate(_ sender: Any) {
        if !MainView.isAnimating {
            MainView.startAnimating()
        } else {
            MainView.stopAnimating()
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
