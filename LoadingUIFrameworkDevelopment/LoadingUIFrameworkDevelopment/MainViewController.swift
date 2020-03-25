//
//  MainViewController.swift
//  LoadingUIFrameworkDevelopment
//
//  Created by Nick Nguyen on 3/25/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit
import LoadingUI

class MainViewController: UIViewController {
    
    
    //MARK:- Properties
    
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
    
    
    private let heartButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 16
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(heartTapped), for: .touchUpInside)
        return button
        
    }()
    
    //MARK:- View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        
        
    }
    
    
    //MARK:- Action
    
    @objc func heartTapped() {
        let heartAnimationScene = ReplicateViewController()
        present(heartAnimationScene, animated: true, completion: nil)
        
    }

    @objc private func activateTapped() {
        let modalView = LoadingViewController()
        modalView.modalPresentationStyle = .fullScreen
        present(modalView, animated: true, completion: nil)
        modalView.dismissModalView()
        print("Showing modal view")
    }
    
    
    private func setUpUI() {
        view.addSubview(activateButton)
        view.addSubview(heartButton)
        NSLayoutConstraint.activate([
            activateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activateButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            activateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 80),
            activateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -80),
            
            heartButton.topAnchor.constraint(equalTo: activateButton.bottomAnchor,constant: 10),
            heartButton.leadingAnchor.constraint(equalTo: activateButton.leadingAnchor),
            heartButton.trailingAnchor.constraint(equalTo: activateButton.trailingAnchor),
            heartButton.heightAnchor.constraint(equalToConstant: 40)
        
        ])
    }
    
    
    
}

