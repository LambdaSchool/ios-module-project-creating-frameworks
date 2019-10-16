//
//  LoadingWheelViewController.swift
//  LodingUI
//
//  Created by Jake Connerly on 10/16/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit

public class LoadingWheelViewController: UIViewController {
    
    let loadingWheel = IndeterminateLoadingView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))

    public override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    func setUpLoadingWheel() {
        loadingWheel.translatesAutoresizingMaskIntoConstraints = false
        
    }

}
