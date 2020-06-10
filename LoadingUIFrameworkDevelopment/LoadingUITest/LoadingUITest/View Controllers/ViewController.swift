//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Chad Parker on 6/9/20.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
   
   private var isLoaderAnimating = true
   private let loadingVC = LoadingViewController()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      setUpSubviews()
   }
   
   private func setUpSubviews() {
      
      // loader
      view.addSubview(loadingVC.view)
      addChild(loadingVC)
      loadingVC.didMove(toParent: self)
      
      loadingVC.view.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
         loadingVC.view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
         loadingVC.view.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      ])
      
      loadingVC.foregroundColor = .systemBlue
      loadingVC.startAnimating()
      
      // button
      let toggleButton = UIButton(type: .system)
      toggleButton.setTitle("toggle animation", for: .normal)
      toggleButton.addTarget(self, action: #selector(toggleLoader), for: .touchUpInside)
      view.addSubview(toggleButton)
      toggleButton.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
         toggleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
         toggleButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
      ])
   }
   
   @objc func toggleLoader() {
      isLoaderAnimating.toggle()
      isLoaderAnimating ? loadingVC.startAnimating() : loadingVC.stopAnimating()
   }
}
