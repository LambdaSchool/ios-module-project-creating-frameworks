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
        - Add startAnimating method to initializer
        - Add circulito as subview
        - Add Center constraint
        - Add CocoaSubclass to storyboard view controller...... smh lmao
        - Had to implement setUpView inside of viewDidLoad and make sure to add it as subview before messing with constraints, as well as set translatesAutore.... to false. THANKS JON
 */

open class LoadingViewController: UIViewController {
    private let circulito = IndeterminateLoadingView()
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    private func setUpView() {
        circulito.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(circulito)
        circulito.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        circulito.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        circulito.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        circulito.startAnimating()
    }
}

/*
   So. A DataSource takes care of anything related to internal data.
   - Size
        - Give a default size
            / shapeLayer, and more specifically, the thickness property, are responsible for size.
              So delegate and Protocol would have to affect those properties.
              Could create methods inside of IndeterminateLoadingView.swift to allow for changing those.
        - Allow to be changed
            / Same method but without the default values.
   - Placement
        - Give default placement
        - Allow to be changed
            / As placement can be affected by constraints, it'd be a lot easier to implement. But it splits the responsibilities.
              So I think the method of somehow providing the value to be used for size from a LoadingVC DataSource class would be the cleanest approach.
 
    A Delegate handles events.
    - Start & Stop animating
        - Automatically call Start Animating on view did load.
        - Automatically call Stop Animating on view will disapper. (idk just in case?)
*/

