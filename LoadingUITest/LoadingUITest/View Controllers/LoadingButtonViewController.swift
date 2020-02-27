//
//  LoadingButtonViewController.swift
//  LoadingUITest
//
//  Created by Michael on 2/26/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

class LoadingButtonViewController: UIViewController {

    @IBOutlet weak var loadingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingButton.setTitle("Load Selfie", for: .normal)
        loadingButton.layer.cornerRadius = 12
        loadingButton.layer.borderWidth = 1.0
    }
    
    @IBAction func loadingButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "LoadingModalSegue", sender: self)
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
