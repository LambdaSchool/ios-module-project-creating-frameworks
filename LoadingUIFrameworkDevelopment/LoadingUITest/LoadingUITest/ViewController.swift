//
//  ViewController.swift
//  LoadingUITest
//
//  Created by David Wright on 4/27/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

    private let loadingVCButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
    }

    private func setupButton() {
        view.addSubview(loadingVCButton)
        
        // Setup button attributes
        loadingVCButton.setTitle("Show Loading VC", for: .normal)
        loadingVCButton.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .medium)
        loadingVCButton.titleLabel?.textAlignment = .center
        loadingVCButton.titleLabel?.textColor = .white
        loadingVCButton.backgroundColor = .systemBlue
        loadingVCButton.layer.cornerRadius = 4
        
        // Setup button constraints
        loadingVCButton.translatesAutoresizingMaskIntoConstraints = false
        loadingVCButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        loadingVCButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        loadingVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loadingVCButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
        
        loadingVCButton.addTarget(self, action: #selector(showLoadingVCButtonTapped), for: .touchUpInside)
    }
    
    @objc private func showLoadingVCButtonTapped() {
        present(LoadingViewController(loadingViewCircleDiameter: 200, loadingDuration: 3), animated: true, completion: nil)
    }
}

