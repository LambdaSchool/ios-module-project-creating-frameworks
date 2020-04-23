//
//  LoadingViewController.swift
//  WaitingFramework
//
//  Created by Bradley Diroff on 4/22/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import Foundation
import UIKit

public class LoadingViewController: UIViewController {
    
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
