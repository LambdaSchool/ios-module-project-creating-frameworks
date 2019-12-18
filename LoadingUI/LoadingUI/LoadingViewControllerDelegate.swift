//
//  LoadingViewControllerDelegate.swift
//  LoadingUI
//
//  Created by Jon Bash on 2019-12-18.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import Foundation

public protocol LoadingViewControllerDelegate: class {
    func loadingViewController(
        _ loadingViewController: LoadingViewController,
        didFinishLoadingWithError error: Error?)
    
    func loadingViewControllerDidTimeOut(
        _ loadingViewController: LoadingViewController)
    func loadingViewControllerDidCancelLoading(
        _ loadingViewController: LoadingViewController)
}
