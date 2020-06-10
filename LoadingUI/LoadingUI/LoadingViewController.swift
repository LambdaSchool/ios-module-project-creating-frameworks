//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Thomas Dye on 6/9/20.
//  Copyright © 2020 Thomas Dye. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
    private var loadingView: IndeterminateLoadingView!
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let frame = CGRect(x: 20, y: 100, width: 100, height: 100)
        
        loadingView = IndeterminateLoadingView(frame: frame)
        
        view.backgroundColor = .white
        
        startAnimating()
        setupUI()
    }
    
    private func startAnimating() {
        loadingView.startAnimating()
    }
    
    private func setupUI() {
        view.addSubview(loadingView)
        
        let stopButton = UIButton()
        view.addSubview(stopButton)
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        
        stopButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        stopButton.setTitle("Dismiss", for: .normal)
        stopButton.setTitleColor(.red, for: .normal)
        stopButton.addTarget(self, action: #selector(stopAnimatingAndDismiss), for: .touchUpInside)
    }
    
    @objc private func stopAnimatingAndDismiss() {
        loadingView.stopAnimating()
        dismiss(animated: true, completion: nil)
    }
    
}
