//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by scott harris on 3/25/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
//    public override func viewDidLoad() {
//        
//    }
    
    public func showLoading() {
        self.modalPresentationStyle = .overCurrentContext
        let spinnerView = IndeterminateLoadingView(frame: self.view.frame)
        self.view.backgroundColor = .white
        self.view.addSubview(spinnerView)
        spinnerView.startAnimating()
    }
    
    public func dismissLoading() {
        dismiss(animated: true)
    }
    
}
