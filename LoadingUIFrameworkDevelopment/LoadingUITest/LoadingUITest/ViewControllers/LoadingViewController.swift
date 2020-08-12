//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by Elizabeth Thomas on 8/11/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

import UIKit
import LoadingUI

public class LoadingViewController: UIViewController {
    
    var loadingView: LoadingView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRect(x: 20, y: 100, width: 100, height: 100)
        
        loadingView = LoadingView(frame: frame)
        
        startAnimating()
        setupViews()
    }
}

extension LoadingViewController {
    
    private func startAnimating() {
        loadingView.startAnimating()
    }
    
    private func setupViews() {
        view.addSubview(loadingView)
        
        let stopButton = UIButton()
        view.addSubview(stopButton)
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        
        stopButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        stopButton.setTitle("Stop Loading", for: .normal)
        stopButton.setTitleColor(.black, for: .normal)
        stopButton.addTarget(self, action: #selector(stopAnimating), for: .touchUpInside)
    }
    
    @objc private func stopAnimating() {
        loadingView.stopAnimating()
        dismiss(animated: true, completion: nil)
    }
    
}
