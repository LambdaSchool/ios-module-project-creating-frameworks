//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by Kat Milton on 8/21/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import UIKit
import LoadingAnimationUnit

class LoadingViewController: UIViewController {
    
    @IBOutlet var loadingView: IndeterminateLoadingView!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.clear
        view.isOpaque = false
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startLoadAnimation()
    }
    
    func startLoadAnimation() {
        loadingView.startAnimating()
    }
    
    func stopLoadAnimation() {
        loadingView.stopAnimating()
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
