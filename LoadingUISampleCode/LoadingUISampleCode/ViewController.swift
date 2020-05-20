//
//  ViewController.swift
//  LoadingUISampleCode
//
//  Created by Hunter Oppel on 5/20/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func presentLoadingScreen(_ sender: UIButton) {
        let bundle = Bundle(for: LoadingViewController.self)
        let VC = LoadingViewController(nibName: nil, bundle: bundle)
        VC.modalPresentationStyle = .fullScreen
        present(VC, animated: true)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            VC.dismiss(animated: true, completion: nil)
        }
    }
}
