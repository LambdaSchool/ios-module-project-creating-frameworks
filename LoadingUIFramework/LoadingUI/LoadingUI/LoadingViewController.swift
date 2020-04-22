//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Karen Rodriguez on 4/22/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

import Foundation
import UIKit

/*
    So we're subclassing UIViewController. This means that this framework should behave like MessageKit:
    - Automatically create all necessary UI elements.
    - Give the user the option to start or end the animation.
    - Give the user the option to check the  isAnimating property.
 
    IndeterminateLoadingView subclasses UIView. It takes care of creating paths and animating.
    I'm not exactly sure how to implement it, so I'll do trial and error and document as I go.
 
    1. Just create a variable = IndeterminateLoadingView()
 */

open class LoadingViewController: UIViewController {
    let circulito = IndeterminateLoadingView()
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
