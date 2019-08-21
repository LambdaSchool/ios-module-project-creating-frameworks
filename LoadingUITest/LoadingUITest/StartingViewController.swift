//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Kat Milton on 8/21/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import UIKit
import LoadingAnimationUnit

class StartingViewController: UIViewController {

    @IBAction func startLoadingPressed(_ sender: UIButton) {
        let destinationVC = LoadingViewController()
        destinationVC.modalPresentationStyle = .overFullScreen
        present(destinationVC, animated: true, completion: nil)
        sender.tintColor = .clear
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

