//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Elizabeth Thomas on 6/9/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    private let loadingVC = LoadingViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func loadButtonTapped(_ sender: Any) {
        loadingVC.modalPresentationStyle = .overFullScreen
        present(loadingVC, animated: true, completion: nil)
    }
    
}

