//
//  LoadingViewController.swift
//  WaitingIndicator
//
//  Created by Bradley Diroff on 5/20/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {

    public var spinView: IndeterminateLoadingView? = nil
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        spinView = IndeterminateLoadingView(frame: self.view.frame)
        
        if let spinView = spinView {
            view.addSubview(spinView)
            spinView.startAnimating()
        }
    }

}
