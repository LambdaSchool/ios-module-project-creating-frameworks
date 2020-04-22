//
//  LoadingUI.swift
//  LoadingUI
//
//  Created by Mark Gerrior on 4/22/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

import Foundation

public struct LoadingUI {

    var loadUI = IndeterminateLoadingView()
    
    public init() { }
    
    public func show() {
        loadUI.startAnimating()
    }
    
    public func hide() {
        loadUI.stopAnimating()
    }
}
