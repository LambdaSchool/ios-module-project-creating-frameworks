//
//  ViewController.swift
//  LoadingUITest
//
//  Created by scott harris on 3/25/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    let loadingViewController = LoadingViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupButton()
    }
    
    func setupButton() {
        let button = UIButton()
        button.addTarget(self, action: #selector(animateTapped), for: .touchUpInside)
        button.setTitle("Animate", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
  
    }
    
    @objc func animateTapped() {
        loadingViewController.showLoading()
        let gestureRec = UITapGestureRecognizer(target: self, action: #selector(stopLoading))
        loadingViewController.view.addGestureRecognizer(gestureRec)
        present(loadingViewController, animated: false)
    }
    
    @objc func stopLoading() {
        loadingViewController.dismissLoading()
    }


}

