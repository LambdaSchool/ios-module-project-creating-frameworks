//
//  ViewController.swift
//  LoadingUIFrameworkDevelopment
//
//  Created by Nick Nguyen on 3/25/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    
    
    private let activateButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkText
        button.setTitle("Activate", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .white
        button.layer.cornerRadius = 16
        button.addTarget(self, action: #selector(activateTapped), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        
        
    }

    @objc private func activateTapped() {
        print("Showing modal view")
    }
    
    
    private func setUpUI() {
        view.addSubview(activateButton)
        
        NSLayoutConstraint.activate([
            activateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activateButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            activateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 80),
            activateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -80)
            
            
        ])
    }
    
    
    
}

