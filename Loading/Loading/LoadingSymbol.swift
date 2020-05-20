//
//  Animation.swift
//  Loading
//
//  Created by Cameron Collins on 5/20/20.
//  Copyright © 2020 iOS BW. All rights reserved.
//

import UIKit

public class LoadingSymbol: UIView {
    
    //MARK: - Properties
    
    
    //MARK: - Methods
    public override func draw(_ rect: CGRect) {
        //TODO: Draw Circle
        if let context = UIGraphicsGetCurrentContext() {
            context.move(to: CGPoint(x: 0, y: 0))
            context.addLine(to: CGPoint(x: 100, y: 100))
            context.setStrokeColor(UIColor.black.cgColor)
            context.setLineWidth(3.0)
            context.strokePath()
        }
    }

    func playAnimation() {
        //TODO: Play Animation
        
    }
    
}
