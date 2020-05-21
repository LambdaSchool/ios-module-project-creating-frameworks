//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Chris Dobek on 5/21/20.
//  Copyright © 2020 Chris Dobek. All rights reserved.
//

import UIKit
import LoadingUI

class LoadingViewController: UIViewController {
    
    //MARK: - Properties

   @IBOutlet weak var loadButton: UIButton!

   var indeterminateLoadingView: IndeterminateLoadingView = {
       let x = UIScreen.main.bounds.width / 2
       let y = UIScreen.main.bounds.height / 2
       let frame: CGRect = CGRect(origin: CGPoint(x: x, y: y), size: CGSize(width: 100, height: 100))
       return IndeterminateLoadingView(frame: frame)
   }()

   override func viewDidLoad() {
       super.viewDidLoad()

   }

    // MARK: - Actions
   @IBAction func startLoad(_ sender: Any) {
   }




}

