//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by Waseem Idelbi on 8/11/20.
//  Copyright © 2020 Waseem Idelbi. All rights reserved.
//

import UIKit
import LoadingUI

class LoadingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()

    }
    
    func setupView() {
        
        let thing = IndeterminateLoadingView(frame: self.view.frame)
        view.addSubview(thing)
        thing.startAnimating()
        
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
