//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Wyatt Harrell on 4/22/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    private var loadingView: IndeterminateLoadingView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        start()
    }
    
    private func setup() {
        loadingView = IndeterminateLoadingView(frame: CGRect(x: view.frame.midX, y: view.frame.midY, width: 200, height: 200))
        self.modalPresentationStyle = .overCurrentContext
        self.view.backgroundColor = .clear
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loadingView)
        loadingView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        loadingView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        loadingView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        loadingView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    private func start() {
        loadingView.startAnimating()
    }
    
    public func stop() {
        loadingView.stopAnimating()
        self.dismiss(animated: true, completion: nil)
    }
}
