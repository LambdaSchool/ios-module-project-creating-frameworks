//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Chris Dobek on 5/21/20.
//  Copyright © 2020 Chris Dobek. All rights reserved.
//

import UIKit
import LoadingUI

class LoadingViewController: UIViewController {
    
    //MARK: - Properties
    
    public var loadView: IndeterminateLoadingView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadView = IndeterminateLoadingView(frame: self.view.frame)

               if let loadView = loadView {
                   view.addSubview(loadView)
                   loadView.startAnimating()
               }
        
    }
    


}

