//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Wyatt Harrell on 4/22/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    var loadingView = IndeterminateLoadingView()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        start()
    }
    
    private func setup() {
        self.modalPresentationStyle = .overCurrentContext
        self.view.backgroundColor = .clear
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loadingView)
        loadingView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        loadingView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func start() {
        loadingView.startAnimating()
    }
    
    public func stop() {
        loadingView.stopAnimating()
        self.dismiss(animated: true, completion: nil)
    }
}
