//
//  LoadingUIViewController.swift
//  LoadingUI
//
//  Created by Mark Gerrior on 4/22/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

import UIKit

public class LoadingUIViewController: UIViewController {

    var loadUI = IndeterminateLoadingView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    
    override public func viewDidLoad() {
        print("viewDidLoad: startAnimating")
        print(loadUI.frame)
        loadUI.startAnimating()
    }
    
    public func show() {
        print("startAnimating")
        loadUI.startAnimating()
    }
    
    public func hide() {
        print("stopAnimating")
        loadUI.stopAnimating()
    }
}
