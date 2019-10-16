//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Ciara Beitel on 10/16/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
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
