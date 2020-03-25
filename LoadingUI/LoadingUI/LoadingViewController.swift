//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Enrique Gongora on 3/25/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    lazy var loadingView: IndeterminateLoadingView = {
        let frame = CGRect(x: view.center.x, y: view.center.y, width: view.bounds.width / 2, height: view.bounds.width / 2)
        let loadingView = IndeterminateLoadingView(frame: frame)
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        loadingView.backgroundColor = .white
        loadingView.alpha = 1
        loadingView.layer.cornerRadius = 20
        loadingView.clipsToBounds = true
        return loadingView
    }()

    public override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
    }

    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadingView.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 7.3) {
            self.loadingView.stopAnimating()
            self.dismiss(animated: true)
        }
    }

    private func setupSubViews() {
        view.addSubview(loadingView)
        NSLayoutConstraint.activate([
            loadingView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            loadingView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -40),
            loadingView.widthAnchor.constraint(equalToConstant: 200),
            loadingView.heightAnchor.constraint(equalTo: loadingView.widthAnchor, multiplier: 1)
        ])
    }
}
