//
//  LoadingViewController.swift
//  
//
//  Created by Lambda_School_Loaner_268 on 3/25/20.
//

import UIKit

class LoadingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet var MainView: IndeterminateLoadingView!
    
    
    @IBAction func animate(_ sender: UIButton) {
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
