//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Dillon P on 12/10/19.
//  Copyright © 2019 Lambda iOSPT2. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadingViewController.modalPresentationStyle = .fullScreen
        present(loadingViewController, animated: true, completion: nil)
        
    }
    
    var loadingViewController = LoadingViewController()
    
    
    
    
    
    
    
    


}

