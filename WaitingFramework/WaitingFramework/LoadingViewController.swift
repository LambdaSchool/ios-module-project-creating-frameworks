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
     //   spinView.bounds = CGRect(x: self.view.frame.midX, y: self.view.frame.midY, width: 100, height: 100)
        spinView.center = CGPoint(x: self.view.frame.midX, y: self.view.frame.midY)
        print("THIS IS X VALUE: \(self.view.frame.midX) THIS IS Y VALUE: \(self.view.frame.midY)")
        view.addSubview(spinView)
        
        spinView.startAnimating()
        
    }
    
}
