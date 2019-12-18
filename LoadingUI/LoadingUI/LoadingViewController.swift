//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Jon Bash on 2019-12-18.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
    // MARK: - Properties
    
    public private(set) var isLoading: Bool = false
    
    public weak var delegate: LoadingViewControllerDelegate?
    public var timeout: TimeInterval = 10
    
    private lazy var loadingView: IndeterminateLoadingView? = {
        let center = CGPoint(
            x: view.frame.width / 2.0,
            y: view.frame.height / 2.0)
        let width = min(center.x, center.y)
        
        let loadingViewFrame = CGRect(
            x: center.x - (width / 2.0),
            y: center.y - (width / 2.0),
            width: width,
            height: width)
        
        return IndeterminateLoadingView(frame: loadingViewFrame)
    }()
    
    private weak var timer: Timer?
    
    // MARK: - View Lifecycle
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        beginLoading()
    }
    
    public override func viewDidDisappear(_ animated: Bool) {
        endLoading()
        
        super.viewDidDisappear(animated)
    }
    
    // MARK: - Completion
    
    public func loadingDidFinish(withError error: Error?) {
        endLoading()
        delegate?.loadingViewController(self, didFinishLoadingWithError: error)
    }
    
    // MARK: - Private Methods
    
    private func beginLoading() {
        self.isLoading = true
        loadingView?.startAnimating()
        timer = Timer.scheduledTimer(withTimeInterval: timeout, repeats: false, block: { _ in
            self.delegate?.loadingViewControllerDidTimeOut(self)
            self.timer = nil
        })
        
    }
    
    private func endLoading() {
        self.isLoading = false
        loadingView?.stopAnimating()
        timer?.invalidate()
    }
}
