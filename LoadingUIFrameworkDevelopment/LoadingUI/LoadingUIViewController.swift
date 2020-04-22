//
//  LoadingUIViewController.swift
//  LoadingUI
//
//  Created by Mark Gerrior on 4/22/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

import UIKit

public class LoadingUIViewController: UIView {

    var loadUI = IndeterminateLoadingView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    
    public func show() {
        print("startAnimating")
        loadUI.startAnimating()
    }
    
    public func hide() {
        print("stopAnimating")
        loadUI.stopAnimating()
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
