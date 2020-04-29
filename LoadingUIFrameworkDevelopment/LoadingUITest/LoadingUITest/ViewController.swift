//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Jessie Ann Griffin on 4/28/20.
//  Copyright © 2020 Jessie Griffin. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

    @IBOutlet weak var loadViewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadViewButton.backgroundColor = .darkGray
        loadViewButton.layer.cornerRadius = 4.0
    }

    // MARK: Navigaiton
    
    func prepare(for segue: UIStoryboardSegue, sender: UIButton) {
        if segue.identifier == "presentLoadingView" {
            guard let destinationVC = segue.destination as? LoadingViewController else { return }
            destinationVC.view = IndeterminateLoadingView()
        }
    }
    
}

