//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by Tobi Kuyoro on 23/04/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import UIKit
import LoadingUI

class LoadingViewController: UIViewController {
    
    @IBOutlet weak var loadingButton: UIButton!
    @IBOutlet weak var indeterminateLoadingView: IndeterminateLoadingView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loadingButtonTapped(_ sender: Any) {
        indeterminateLoadingView.isHidden = false
        indeterminateLoadingView.startAnimating()
        loadingButton.setTitle("Loading...", for: .normal)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.indeterminateLoadingView.isHidden = true
            self.indeterminateLoadingView.stopAnimating()
            self.loadingButton.setTitle("Start Loading", for: .normal)
        }
    }
}

