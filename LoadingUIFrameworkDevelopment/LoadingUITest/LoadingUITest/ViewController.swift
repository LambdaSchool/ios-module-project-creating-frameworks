//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Joel Groomer on 12/10/19.
//  Copyright © 2019 Julltron. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func loadTapped(_ sender: Any) {
        
        // To use the LoadingUI framework, all you need to do is self.present an instance of the LoadingUIViewController
        // and dismiss it when your loading task is complete.
        
        let loader = LoadingUIViewController()
        present(loader, animated: true) {
            let _ = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { _ in      // timer to simulate loading
                self.dismiss(animated: true) { }                                            // dismiss when complete
            }
        }
    }
}
