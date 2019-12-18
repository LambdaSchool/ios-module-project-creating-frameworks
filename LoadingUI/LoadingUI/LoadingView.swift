//
//  LoadingView.swift
//  LoadingUI
//
//  Created by Jon Bash on 2019-12-18.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

class LoadingView: UIView {
    var loadingShape: CAShapeLayer = {
        var shape = CAShapeLayer()
        return shape
    }()
    
    var progressIsDeterminate = false

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
    }

}
