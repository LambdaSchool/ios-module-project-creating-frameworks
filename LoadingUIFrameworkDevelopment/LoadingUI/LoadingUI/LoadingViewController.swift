//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Shawn Gee on 4/22/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    public enum Size {
        case small
        case medium
        case large
    }
    
    // MARK: - Public Properties
    
    public var color: UIColor = .systemBlue
    public var size: Size = .medium
    public private(set) var isAnimating = false
    
    // MARK: - Public Methods
    
    public func startAnimating() {
        
    }
    
    public func stopAnimating() {
        
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
