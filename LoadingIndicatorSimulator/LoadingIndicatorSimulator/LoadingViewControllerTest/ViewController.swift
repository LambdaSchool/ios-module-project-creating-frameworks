//
//  ViewController.swift
//  LoadingIndicatorSimulator
//
//  Created by Kenny on 2/26/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

import UIKit
import LoadingIndicator

class ViewController: LoadingViewController {
    //=======================
    // MARK: - IBOutlets
    @IBOutlet weak var redView: UIView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let testRect = CGRect(x: 50,
                              y: 50,
                              width: 50,
                              height: 50)
        let testView = UIView(frame: testRect)
        testView.backgroundColor = .systemRed
        view.addSubview(testView)
        print(testView.center)
        load(on: testView)
    }
}
