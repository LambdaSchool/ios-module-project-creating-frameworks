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
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      let loadingVC = LoadingViewController()
      view.addSubview(loadingVC.view)
      loadingVC.view.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
         loadingVC.view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
         loadingVC.view.centerYAnchor.constraint(equalTo: view.centerYAnchor),
         loadingVC.view.widthAnchor.constraint(equalToConstant: 100),
         loadingVC.view.heightAnchor.constraint(equalToConstant: 100),
      ])
      
      loadingVC.view.layer.borderWidth = 0.5
   }
}
