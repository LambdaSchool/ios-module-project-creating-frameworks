//
//  LoadingViewController.swift
//  Loading
//
//  Created by Isaac Lyons on 11/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
    
    private var loadingView: IndeterminateLoadingView?

    override public func viewDidLoad() {
        super.viewDidLoad()

        setUpViews()
        startAnimating()
    }
    
    private func setUpViews() {
        view.backgroundColor = .white
        
        let loadingView = IndeterminateLoadingView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loadingView)
        
        NSLayoutConstraint.activate([
            loadingView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            loadingView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -50)
        ])
        
        self.loadingView = loadingView
    }
    
    private func startAnimating() {
        loadingView?.startAnimating()
    }

}
