//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by Jorge Alvarez on 2/27/20.
//  Copyright © 2020 Jorge Alvarez. All rights reserved.
//

import UIKit
import LoadingUI

class LoadingViewController: UIViewController {

    private var loadingView: IndeterminateLoadingView {
       let loader = IndeterminateLoadingView()
       return loader
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //middleView.backgroundColor = .blue
        
        let loadingView = IndeterminateLoadingView()
        //let loadingView = IndeterminateLoadingView(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        loadingView.frame = CGRect(x: 100, y: 200, width: 50, height: 50)
        loadingView.backgroundColor = .yellow
        self.view.addSubview(loadingView)
        
        //loadingView = IndeterminateLoadingView()
        //middleView = loadingView
        loadingView.startAnimating()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
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
