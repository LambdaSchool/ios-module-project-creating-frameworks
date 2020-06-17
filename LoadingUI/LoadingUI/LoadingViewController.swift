//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Enzo Jimenez-Soto on 6/17/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

import Foundation
import UIKit

public class LoadingViewController: UIViewController {
    
    private var loadingIndicatorView: IndeterminateLoadingView?
      
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public func setupView(with view: UIView) {
        loadingIndicatorView = IndeterminateLoadingView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        view.addSubview(loadingIndicatorView!)
    }
    
    public func startLoading() {
        guard let loadingIndicatorView = loadingIndicatorView else { return }
        loadingIndicatorView.startAnimating()
    }
    
    public func stopLoading() {
        guard let loadingIndicatorView = loadingIndicatorView else { return }
        loadingIndicatorView.stopAnimating()
    }
}
