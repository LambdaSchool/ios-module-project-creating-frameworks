//
//  LoadingUIViewController.swift
//  LoadingUI
//
//  Created by Mark Gerrior on 4/22/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

import UIKit

public class LoadingUIViewController: UIView {

    var loadUI: IndeterminateLoadingView!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)

        loadUI = IndeterminateLoadingView(frame: frame)
        self.addSubview(loadUI)        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
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
