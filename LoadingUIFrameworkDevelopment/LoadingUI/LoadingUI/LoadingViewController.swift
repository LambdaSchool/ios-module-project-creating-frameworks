//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Gi Pyo Kim on 11/13/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
    
    private var loadingView: IndeterminateLoadingView!
    
//    required public init() {}

    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let viewWidth = view.frame.height
        let viewHeight = view.frame.height
        let widthHeight = viewWidth > viewHeight ? viewHeight/2 : viewWidth/2
        let frame = CGRect(x: viewWidth/4, y: viewHeight/4, width: widthHeight, height: widthHeight)
        loadingView = IndeterminateLoadingView(frame: frame)
        
        setupUI()
        loadingView.startAnimating()
    }
    
    private func setupUI() {
        view.addSubview(loadingView)
        
        let stopButton = UIButton()
        view.addSubview(stopButton)
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        
        stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        stopButton.topAnchor.constraint(equalTo: loadingView.bottomAnchor, constant: 20)
        
        stopButton.setTitle("STOP", for: .normal)
        stopButton.addTarget(self, action: #selector(stopAnimation), for: .touchUpInside)
    }
    
    @objc private func stopAnimation() {
        loadingView.stopAnimating()
    }
    
    private func startAnimation() {
        loadingView.startAnimating()
    }
    

}
