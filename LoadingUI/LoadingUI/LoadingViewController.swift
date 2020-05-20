//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Hunter Oppel on 5/20/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

import UIKit

open class LoadingViewController: UIViewController {
    
    @IBOutlet weak var loadingView: IndeterminateLoadingView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        startLoading()
    }
        
    public func startLoading() {
        loadingView.startAnimating()
    }
    
    public func stopLoading() {
        loadingView.stopAnimating()
    }
}
