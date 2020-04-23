//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Shawn Gee on 4/22/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var sizeSelector: UISegmentedControl!
    let sizeOptions: [LoadingViewController.Size] = [.small, .medium, .large]
    
    @IBOutlet weak var colorSelector: UISegmentedControl!
    let colorOptions: [UIColor] = [.systemBlue, .systemGreen, .systemRed]
    
    // MARK: - IBActions
    
    @IBAction func presentLoadingViewController(_ sender: Any) {
        let loadingVC = LoadingViewController()
        loadingVC.ringSize = sizeOptions[sizeSelector.selectedSegmentIndex]
        loadingVC.ringColor = colorOptions[colorSelector.selectedSegmentIndex]
        
        present(loadingVC, animated: true)
    }
    
    
}

