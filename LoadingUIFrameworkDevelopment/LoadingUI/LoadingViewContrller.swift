//
//  LoadingViewContrller.swift
//  LoadingUI
//
//  Created by denis cedeno on 5/3/20.
//  Copyright © 2020 DenCedeno Co. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loadingView)
        loadingView.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        loadingView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        loadingView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loadingView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    public func embed(in view: UIView, parent: UIViewController) {
        parent.addChild(self)
        let loadingView = self.view!
        loadingView.removeFromSuperview()
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        loadingView.frame = CGRect(x: view.bounds.midX, y: view.bounds.midY, width: 200, height: 200)
        view.addSubview(loadingView)
        loadingView.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        loadingView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        loadingView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loadingView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        didMove(toParent: parent)
    }
    
    // MARK: - Properties
    
    public var isAnimating = false {
        didSet {
            isAnimating ? loadingView.startAnimating() : loadingView.stopAnimating()
        }
    }
    
    private let loadingView = IndeterminateLoadingView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
}

