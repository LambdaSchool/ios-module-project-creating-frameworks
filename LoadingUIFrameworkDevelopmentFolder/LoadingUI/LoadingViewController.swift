//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Mark Poggi on 5/20/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    // MARK: - Properties

    private lazy var loadingView: IndeterminateLoadingView = {
        let width = min(view.center.x, view.center.y)

        let loadingViewFrame = CGRect(x: view.center.x - (width / 2.0), y: view.center.y - (width / 2.0), width: width, height: width)
        
        let loadingView = IndeterminateLoadingView(frame: loadingViewFrame)

        self.view.addSubview(loadingView)

        return loadingView
    }()

    // MARK: - View Lifecycle

    /// Presents animated circle graphic.
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        startLoading()
    }

    // MARK: - Methods

    private func startLoading() {
        loadingView.startAnimating()
    }
}
