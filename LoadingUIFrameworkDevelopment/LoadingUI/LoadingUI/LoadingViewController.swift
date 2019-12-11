//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Dillon P on 12/10/19.
//  Copyright © 2019 Lambda iOSPT2. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .white
        let centerX = UIScreen.main.bounds.size.width*0.5
        let centerY = UIScreen.main.bounds.size.height*0.5
        let width: CGFloat = 100.0
        let height: CGFloat = 100.0
        indeterminateLoadingView = IndeterminateLoadingView(frame: CGRect(x: centerX - width/2, y: centerY - height/2, width: width, height: height))
        setUpUI()
        startAnimating()
    }
    
    var indeterminateLoadingView: IndeterminateLoadingView!
   
    public func startAnimating() {
        indeterminateLoadingView.startAnimating()
    }
    
    public func stopAnimating() {
        indeterminateLoadingView.stopAnimating()
    }
    
    func setUpUI() {
        view.addSubview(indeterminateLoadingView)
    }

}
