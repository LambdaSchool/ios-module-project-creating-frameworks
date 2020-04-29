//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Sal B Amer on 4/28/20.
//  Copyright © 2020 Sal B Amer. All rights reserved.
//

import UIKit
import LoadingUIFramework
import SwiftGifOrigin

class ViewController: UIViewController {
    
//    @IBOutlet weak var MainView: IndeterminateLoadingView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    // An animated UIImage
    let loadingGif = UIImage.gif(name: "LoadingUI")
    
    
//    let imageView = loading
////    imageView.frame = CGRect(x: 20.0, y: 50.0, width: self.view.frame.size.width - 40, height: 150.0)
////    view.addSubview(imageView)

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func activateBtnWasPressed(_ sender: Any) {
        
//        if !MainView.isAnimating {
//            MainView.startAnimating()
//        } else {
//            MainView.stopAnimating()
//        }
    }
    
}

