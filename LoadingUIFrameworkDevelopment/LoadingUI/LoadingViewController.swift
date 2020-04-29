//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Jessie Ann Griffin on 4/28/20.
//  Copyright © 2020 Jessie Griffin. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    public var shapeView: IndeterminateLoadingView? {
        let shapeView = IndeterminateLoadingView(frame: CGRect(x: 0.0, y: 0.0, width: 240, height: 240))
        return shapeView
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        if let shapeView = shapeView {
            shapeView.startAnimating()
            shapeView.stopAnimating()
        }
    }
}

