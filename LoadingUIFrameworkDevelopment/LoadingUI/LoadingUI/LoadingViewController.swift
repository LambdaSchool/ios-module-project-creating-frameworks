//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Shawn Gee on 4/22/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    public enum Size {
        case small
        case medium
        case large
    }
    
    // MARK: - Public Properties
    
    public var color: UIColor = .systemBlue
    public var size: Size = .medium
    public var isAnimating: Bool {
        loadingView?.isAnimating ?? false
    }
    
    // MARK: - Private Properties
    private var loadingView: IndeterminateLoadingView?
    
    // MARK: - Public Methods
    
    public func startAnimating() {
        
    }
    
    public func stopAnimating() {
        
    }
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - View Lifecycle
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        loadingView = IndeterminateLoadingView(frame: .zero)
        
        guard let loadingView = loadingView else { return }
        
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(loadingView)
        
        NSLayoutConstraint.activate([
            loadingView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            loadingView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            loadingView.widthAnchor.constraint(equalToConstant: 200),
            loadingView.heightAnchor.constraint(equalToConstant: 200),
        ])
        
        loadingView.startAnimating()
    }
}
