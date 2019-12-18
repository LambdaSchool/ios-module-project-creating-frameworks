//
//  LoadingViewControllerDelegate.swift
//  LoadingUI
//
//  Created by Jon Bash on 2019-12-18.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import Foundation

/// A protocol for an object that will be informed of when a `LoadingViewController` has completed its loading.
public protocol LoadingViewControllerDelegate: class {
    /// Informs the delegate that the provided `LoadingViewController` has finished loading, with an optional error.
    /// - Parameters:
    ///   - loadingViewController: The `LoadingViewController` whose loading has finished.
    ///   - error: Optionally, if there was an error in loading the data (e.g., a bad URL, bad data, etc), it can be passed in here.
    func loadingViewController(
        _ loadingViewController: LoadingViewController,
        didFinishLoadingWithError error: Error?)
    
    /// Informs the delegate that the provided `LoadingViewController` did not finish loading before the provided time limit (`LoadingViewController.timeout`; defaults to `10` seconds).
    /// - Parameter loadingViewController: The timed-out `LoadingViewController`.
    func loadingViewControllerDidTimeOut(
        _ loadingViewController: LoadingViewController)
    
    
    /// Called when the provided `LoadingViewController` is dismissed
    /// - Parameter loadingViewController: The `LoadingViewController` whose loading was cancelled.
    func loadingViewControllerDidCancelLoading(
        _ loadingViewController: LoadingViewController)
}
