//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by BrysonSaclausa on 10/6/20.
//

import UIKit
import LoadingUI


class LoadingViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
        
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func loadButton(_ sender: Any) {
        print("load tapped")
        showLoadingView()
        
    }
    
    @IBAction func stopLoadButton(_ sender: Any) {
    print("stop load")
   
    
    }
    
    
    func showLoadingView() {
        let animation = IndeterminateLoadingView(frame: self.view.frame)
        view.addSubview(animation)
        animation.startAnimating()
    }
    
    
    

}
