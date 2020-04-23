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
    
    public let spinView = IndeterminateLoadingView()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        spinView.frame = self.view.frame
        view.addSubview(spinView)
        
        spinView.startAnimating()
        
    }
    
}
