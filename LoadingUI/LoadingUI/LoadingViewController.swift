//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Jon Bash on 2019-12-18.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

/// A presentable view controller that indicates asynchronous data-loading. The `delegate` property should be set and should conform to `LoadingViewControllerDelegate` to function properly. A separate data source will load data in the background, and upon completion will call this object's method `loadingdidFinish(withError:)`.
public class LoadingViewController: UIViewController {
    // MARK: - Public API
    
    /// Indicator of whether data is still loading. Begins as `false`, until the `viewDidAppear(_:)` is called during the view lifecycle, at which point it changes to `true`, and then with `viewDidDisappear` or when `loadingDidFinish` is called (whichever comes first), it is once again set to `false`.
    public private(set) var isLoading: Bool = false
    
    /// The object which will be informed when loading has completed.
    public weak var delegate: LoadingViewControllerDelegate?
    /// In seconds, how long the view controller will wait for `loadingDidFinish` to be called, after which point the delegate will be informed that loading has been abandoned by calling its method `loadingViewControllerDidTimeOut(_:)`. Defaults to `10` seconds.
    public var timeout: TimeInterval = 10
    
    /// The color of the loading indicator. Defaults to `black`.
    public var strokeColor = UIColor.black.cgColor
    /// The stroke width of the loading indicator. Defaults to `10`.
    public var strokeWidth: CGFloat = 10.0
    
    /// The method to be called when loading should stop and the UI should call its finishing methods.
    /// - Parameter error: An optional error that will be passed back to the delegate after completion.
    public func loadingDidFinish(withError error: Error? = nil) {
        endLoading()
        delegate?.loadingViewController(self, didFinishLoadingWithError: error)
    }
    
    /// Method to be called when loading is cancelled by the data source. Calling this will subsequently call the delegate's `loadingViewControllerDidCancelLoading(_:)`.
    public func loadingDidCancel() {
        cancelLoading()
    }
    
    // MARK: - View Lifecycle
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        beginLoading()
    }
    
    public override func viewDidDisappear(_ animated: Bool) {
        if !isLoading {
            cancelLoading()
        } else {
            endLoading()
        }
        
        super.viewDidDisappear(animated)
    }
    
    // MARK: - Private
    
    private lazy var loadingView: IndeterminateLoadingView = {
        let width = min(view.center.x, view.center.y)
        
        let loadingViewFrame = CGRect(
            x: view.center.x - (width / 2.0),
            y: view.center.y - (width / 2.0),
            width: width,
            height: width)
        
        let loadingView = IndeterminateLoadingView(frame: loadingViewFrame)
        
        loadingView.strokeColor = strokeColor
        loadingView.strokeWidth = strokeWidth
        self.view.addSubview(loadingView)
        
        return loadingView
    }()
    
    private weak var timer: Timer?
    
    private func beginLoading() {
        self.isLoading = true
        loadingView.startAnimating()
        timer = Timer.scheduledTimer(withTimeInterval: timeout, repeats: false, block: { _ in
            self.delegate?.loadingViewControllerDidTimeOut(self)
            self.timer = nil
        })
    }
    
    private func endLoading() {
        self.isLoading = false
        loadingView.stopAnimating()
        timer?.invalidate()
    }
    
    private func cancelLoading() {
        endLoading()
        delegate?.loadingViewControllerDidCancelLoading(self)
    }
}
