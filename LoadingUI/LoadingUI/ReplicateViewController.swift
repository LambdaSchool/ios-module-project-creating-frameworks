//
//  Replicate.swift
//  LoadingUI
//
//  Created by Nick Nguyen on 3/25/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit
import CoreGraphics

public class ReplicateViewController: UIViewController {
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let image = UIImage(systemName: "heart")!
        
        
        let replicateView = UIView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
        replicateView.backgroundColor = .white
        
        // MARK: - Setting things up
        let replicatorLayer = CAReplicatorLayer()
        replicatorLayer.frame.size = replicateView.frame.size
        replicatorLayer.masksToBounds = true
        replicateView.layer.addSublayer(replicatorLayer)
        
        let imageLayer = CALayer()
        imageLayer.contents = image.cgImage
        imageLayer.frame.size = image.size
        replicatorLayer.addSublayer(imageLayer)
        
        let instanceCount = replicateView.frame.width / image.size.width
        replicatorLayer.instanceCount = Int(ceil(instanceCount))
        
        // MARK: - Using instance offsets & transforms
        // Shift each instance by the width of the image
        replicatorLayer.instanceTransform = CATransform3DMakeTranslation(
            image.size.width, 0, 0
        )
        
        // Reduce the red & green color component of each instance,
        // effectively making each copy more and more blue
        let colorOffset = -1 / Float(replicatorLayer.instanceCount)
        replicatorLayer.instanceRedOffset = colorOffset
        replicatorLayer.instanceGreenOffset = colorOffset
        
        // MARK: - Replicatorception
        let verticalReplicatorLayer = CAReplicatorLayer()
        verticalReplicatorLayer.frame.size = replicateView.frame.size
        verticalReplicatorLayer.masksToBounds = true
        verticalReplicatorLayer.instanceBlueOffset = colorOffset
        replicateView.layer.addSublayer(verticalReplicatorLayer)
        
        let verticalInstanceCount = replicateView.frame.height / image.size.height
        verticalReplicatorLayer.instanceCount = Int(ceil(verticalInstanceCount))
        
        verticalReplicatorLayer.instanceTransform = CATransform3DMakeTranslation(
            0, image.size.height, 0
        )
        
        verticalReplicatorLayer.addSublayer(replicatorLayer)
        
        let delay = TimeInterval(0.1)
        replicatorLayer.instanceDelay = delay
        verticalReplicatorLayer.instanceDelay = delay
        
        let animation = CABasicAnimation(keyPath: "transform.scale")
        animation.duration = 2
        animation.fromValue = 1
        animation.toValue = 0.1
        animation.autoreverses = true
        animation.repeatCount = .infinity
        imageLayer.add(animation, forKey: "hypnoscale")
        replicateView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(replicateView)
        
        NSLayoutConstraint.activate([
            replicateView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            replicateView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            replicateView.topAnchor.constraint(equalTo: view.topAnchor),
            replicateView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    }
  
