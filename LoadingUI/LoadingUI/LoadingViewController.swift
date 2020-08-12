//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Morgan Smith on 8/11/20.
//  Copyright © 2020 Morgan Smith. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    private let loadingView = IndeterminateLoadingView()

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(loadingView)
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([loadingView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor), loadingView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)])
        loadingView.startAnimating()
    }


}
