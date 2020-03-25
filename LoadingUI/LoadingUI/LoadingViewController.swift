//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Nick Nguyen on 3/25/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit
import Foundation

public class LoadingViewController : UIViewController
{

    
    private let loadingView : IndeterminateLoadingView = {
        let view = IndeterminateLoadingView()
        view.startAnimating()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .red
        return view
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loadingView)
         view.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            loadingView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loadingView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
    

    public func dismissModalView() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: true, completion: nil)
        }
        
    }
}

