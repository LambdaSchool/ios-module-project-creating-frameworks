//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Vici Shaweddy on 1/1/20.
//  Copyright © 2020 Vici Shaweddy. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
    
    private let indeterminateLoadingView = IndeterminateLoadingView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))

    override public func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(self.indeterminateLoadingView)
        self.indeterminateLoadingView.startAnimating()
    }
    
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.indeterminateLoadingView.center = self.view.center
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

