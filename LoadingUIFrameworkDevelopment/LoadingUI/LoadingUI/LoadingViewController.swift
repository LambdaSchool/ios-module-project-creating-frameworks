//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Chad Parker on 6/9/20.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
   
   public var foregroundColor: UIColor = .systemBlue {
      didSet {
         loadingView.foregroundColor = foregroundColor
      }
   }
   private let loadingView = IndeterminateLoadingView()
   
   public override func viewDidLoad() {
      super.viewDidLoad()
      
      view.addSubview(loadingView)
      loadingView.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
         loadingView.topAnchor.constraint(equalTo: view.topAnchor),
         loadingView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
         loadingView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
         loadingView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      ])
   }
   
   public func startAnimating() {
      loadingView.startAnimating()
   }
   
   public func stopAnimating() {
      loadingView.stopAnimating()
   }
}
