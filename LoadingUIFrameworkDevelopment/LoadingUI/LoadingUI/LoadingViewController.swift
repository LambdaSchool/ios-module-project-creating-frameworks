//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by David Wright on 4/28/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

import UIKit

/// A view controller with a circular loading animation.
public class LoadingViewController: UIViewController {
    
    // MARK: - Initializers

    public init(loadingViewCircleDiameter: CGFloat = 100,
                delay: TimeInterval = 0.4,
                loadingDuration: TimeInterval = 2,
                isAnimateUntilDismissedEnabled: Bool = false) {
        super.init(nibName: nil, bundle: nil)
        
        
        self.loadingViewCircleDiameter = loadingViewCircleDiameter
        self.delay = delay
        self.loadingDuration = loadingDuration
        self.isAnimateUntilDismissedEnabled = isAnimateUntilDismissedEnabled
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    // MARK: - Properties
    
    /// The diameter of the circular loading graphic.
    public var loadingViewCircleDiameter: CGFloat = 100
    
    /// The number of seconds until the loading animation begins.
    public var delay: TimeInterval = 0.4
    
    /// The duration the LoadingViewController will be presented on the screeen.
    public var loadingDuration: TimeInterval = 2
    
    /// When indefiniteLoadingDuration is set to 'true', the loading animation will continue until the view controller is dismissed
    public var isAnimateUntilDismissedEnabled = false
    
    private var loadingView: IndeterminateLoadingView!
    private var loadingViewConstraints: [NSLayoutConstraint]!
    
    
    // MARK: - View Controller Lifecycle

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        setupLoadingView()
        perform(#selector(startLoadingAnimation), with: nil, afterDelay: delay)
    }
    
    
    // MARK: - Private Methods

    private func setupLoadingView() {
        loadingView = IndeterminateLoadingView(frame: CGRect(x: 0, y: 0, width: loadingViewCircleDiameter, height: loadingViewCircleDiameter))
        
        view.addSubview(loadingView)
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        
        loadingViewConstraints = [ loadingView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                   loadingView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                                   loadingView.widthAnchor.constraint(equalToConstant: loadingViewCircleDiameter),
                                   loadingView.heightAnchor.constraint(equalToConstant: loadingViewCircleDiameter) ]
        
        NSLayoutConstraint.activate(loadingViewConstraints)
    }
    
    @objc private func startLoadingAnimation() {
        self.loadingView.stopAnimating()
        self.loadingView.startAnimating()
        
        if !self.isAnimateUntilDismissedEnabled {
            DispatchQueue.main.asyncAfter(deadline: .now() + self.loadingDuration) {
                self.loadingView.stopAnimating()
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
}
