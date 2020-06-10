//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by Claudia Contreras on 6/9/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        let indeterminateLoadingView = IndeterminateLoadingView()
        indeterminateLoadingView.startAnimating()
    }

}
