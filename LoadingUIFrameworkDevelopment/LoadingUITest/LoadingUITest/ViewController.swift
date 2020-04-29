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

    let loadingViewController = LoadingViewController()
    
    let showLoadingVCButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButton()
    }

    private func setupButton() {
        guard isViewLoaded else { return }
        
        view.addSubview(showLoadingVCButton)
        
        // Setup button attributes
        showLoadingVCButton.setTitle("Show Loading VC", for: .normal)
        showLoadingVCButton.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .medium)
        showLoadingVCButton.titleLabel?.textAlignment = .center
        showLoadingVCButton.titleLabel?.textColor = .white
        showLoadingVCButton.backgroundColor = .systemBlue
        showLoadingVCButton.layer.cornerRadius = 4
        
        // Setup button constraints
        showLoadingVCButton.translatesAutoresizingMaskIntoConstraints = false
        showLoadingVCButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        showLoadingVCButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        showLoadingVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showLoadingVCButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
        
        showLoadingVCButton.addTarget(self, action: #selector(showLoadingVCButtonTapped), for: .touchUpInside)
    }
    
    @objc func showLoadingVCButtonTapped() {
        present(loadingViewController, animated: true, completion: nil)
    }
}

