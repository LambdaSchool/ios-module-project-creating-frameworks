//
//  LoadingView.swift
//  LoadingUI
//
//  Created by Jon Bash on 2019-12-18.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

fileprivate let defaultLineWidth: CGFloat = 10
fileprivate let defaultColor = UIColor.red.cgColor

class LoadingView: UIView {
    var lineWidth: CGFloat
    var color: CGColor
    
    private(set) var isAnimating: Bool = false
    
    lazy var loadingShape: CAShapeLayer = {
        var shapeLayer = CAShapeLayer()
        
        let circlePath = UIBezierPath(
            arcCenter: self.center,
            radius: self.frame.width,
            startAngle: 0,
            endAngle: 2 * CGFloat.pi,
            clockwise: true)
        shapeLayer.path = circlePath.cgPath
        
        shapeLayer.strokeEnd = 0
        
        shapeLayer.strokeColor = color
        shapeLayer.lineWidth = lineWidth
        shapeLayer.fillColor = UIColor.black.cgColor
        
        shapeLayer.lineCap = .round
        
        layer.addSublayer(shapeLayer)
        
        return shapeLayer
    }()
    
    lazy private var animationBlock: (() -> ()) = {
        UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.6) {
            self.loadingShape.strokeEnd = 2 * .pi
        }
        UIView.addKeyframe(withRelativeStartTime: 0.4, relativeDuration: 0.6) {
            self.loadingShape.strokeStart = 2 * .pi
        }
    }

    init(
        frame: CGRect,
        lineWidth: CGFloat = defaultLineWidth,
        color: CGColor = defaultColor)
    {
        self.lineWidth = lineWidth
        self.color = color
        
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        self.lineWidth = defaultLineWidth
        self.color = defaultColor
        
        super.init(coder: coder)
    }
    
    func startAnimation() {
        isAnimating = true
        animate()
    }
    
    func endAnimation() {
        isAnimating = false
    }
    
    private func animate() {
        UIView.animateKeyframes(
            withDuration: 2,
            delay: 0,
            options: [],
            animations: animationBlock
        ) { _ in
            if self.isAnimating { self.animate() }
        }
    }
}
