//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by patelpra on 6/16/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
    
    private var loadingView: IndeterminateLoadingView!
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let viewWidth = view.frame.height
        let viewHeight = view.frame.height
        let widthHeight = viewWidth > viewHeight ? viewHeight/2 : viewWidth/2
        let frame = CGRect(x: 0, y: 20, width: widthHeight, height: widthHeight)
        loadingView = IndeterminateLoadingView(frame: frame)
        
        view.backgroundColor = .white
        
        setupUI()
        startAnimation()
        
    }
    
    private func setupUI() {
        view.addSubview(loadingView)
        
        let stopButton = UIButton()
        view.addSubview(stopButton)
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: loadingView.bottomAnchor, constant: 20)
        ])
        stopButton.setTitle("STOP", for: .normal)
        stopButton.setTitleColor(.black, for: .normal)
        stopButton.addTarget(self, action: #selector(stopAnimation), for: .touchUpInside)
    }
    
    @objc private func stopAnimation() {
        loadingView.stopAnimating()
        dismiss(animated: true, completion: nil)
    }
    
    private func startAnimation() {
        loadingView.startAnimating()
    }
}
