//
//  LoadingView.swift
//  LoadingUI
//
//  Created by Andrew R Madsen on 9/18/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class IndeterminateLoadingView: UIView, CAAnimationDelegate {
    
    // MARK: - VISIBLE TO ALL OTHER FILES
    /// This is the only stuff that we could potentially care about when using this file.
    
    private(set) var isAnimating = false
    
    func startAnimating() {
        // Check it isn't already animating
        guard !isAnimating else { return }
        // Whatever happens, make sure animating is set to true.
        defer { isAnimating = true }
    
        startAnimation()
    }
    
    func stopAnimating() {
        // Make sure it is animating
        guard isAnimating else { return }
        // Why no defer here?
        shouldStopAnimationOnNextCycle = true
    }
    
    // MARK: - ---------------------------------

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupShapeLayer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupShapeLayer()
    }
    

    
    
    // MARK: - Private
    
    private func setupShapeLayer() {
        let thickness: CGFloat = 100.0
        
        shapeLayer.frame = layer.bounds
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = thickness/3
        shapeLayer.strokeStart = 0.0
        shapeLayer.strokeEnd = 0.0
        layer.addSublayer(shapeLayer)
        
        let radius = min(bounds.width, bounds.height) / 2.0 - thickness/2.0
        let rect = CGRect(x: bounds.midX - radius/2.0, y: bounds.midY - radius/2.0, width: radius, height: radius)
        let path = UIBezierPath(ovalIn: rect)
        
        shapeLayer.path = path.cgPath
    }
    
    private func startAnimation() {
        // So this function will be called on each loop to determine wether the function that does the animating is called.
        // I like this concept of separating these tasks. BUT THE NAMES.
        
        // So this animation will be on a loop? (Lol aren't they all?)
        // This property will be checked on each loop?
        shouldStopAnimationOnNextCycle = false
        // No clue what this is for
        // Oh the actual animation will be changing these valuse? So it resets them for the next loop?
        shapeLayer.strokeStart = 0.0
        shapeLayer.strokeEnd = 0.0
        // Giving it the exact same name is a little wth man
        startAnimation(for: "strokeEnd", timing: .easeIn)
    }
    
    private func startAnimation(for keyPath: String, timing: CAMediaTimingFunctionName) {
        // This method does the animating then.
        
        // All changes to this key("strokeEnd") will be animated
        // Why reset strokeStart to 0.0 if it's never changed?
        let animation = CABasicAnimation(keyPath: keyPath)
        animation.fromValue = 0.0
        animation.toValue = 1.0
        animation.duration = duration
        animation.delegate = self
        animation.isRemovedOnCompletion = false
        animation.timingFunction = CAMediaTimingFunction(name: timing)
        shapeLayer.add(animation, forKey: keyPath)
    }
    
    // MARK: - CAAnimationDelegate
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        guard !shouldStopAnimationOnNextCycle else {
            shouldStopAnimationOnNextCycle = false
            isAnimating = false
            return
        }
        
        if let anim = anim as? CABasicAnimation, anim.keyPath == "strokeEnd" {
            shapeLayer.strokeStart = 0.0
            shapeLayer.strokeEnd = 1.0
            shapeLayer.removeAllAnimations()
            startAnimation(for: "strokeStart", timing: .easeOut)
        }
        
        if let anim = anim as? CABasicAnimation, anim.keyPath == "strokeStart" {
            shapeLayer.strokeStart = 0.0
            shapeLayer.strokeEnd = 0.0
            shapeLayer.removeAllAnimations()
            startAnimation(for: "strokeEnd", timing: .easeIn)
        }
    }
    
    // MARK: - Properties
    
    

    private let shapeLayer = CAShapeLayer()
    private let duration = 1.0
    private var shouldStopAnimationOnNextCycle = false
}
