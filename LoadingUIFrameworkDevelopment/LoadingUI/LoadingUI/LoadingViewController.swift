//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Bobby Keffury on 12/10/19.
//  Copyright © 2019 Bobby Keffury. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
    
    let loadingView = UIView()

    override public func viewDidLoad() {
        super.viewDidLoad()

    }

    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        loadingView.center = view.center
    }
    
    public func beginAnimation() {
        
    }
    
}
