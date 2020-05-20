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
    
    let loadingScreen: LoadingViewController = {
        let bundle = Bundle(for: LoadingViewController.self)
        let VC = LoadingViewController(nibName: nil, bundle: bundle)
        VC.modalPresentationStyle = .fullScreen
        return VC
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func presentLoadingScreen(_ sender: UIButton) {
//        loadingScreen.animateUponLoad = false
        
        present(loadingScreen, animated: true)
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//            self.loadingScreen.startLoading()
//        }
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
//            self.loadingScreen.stopLoading()
//        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
            self.loadingScreen.dismiss(animated: true, completion: nil)
        }
    }
}
