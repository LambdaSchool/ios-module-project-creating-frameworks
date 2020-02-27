//
//  SampleLoadingController.swift
//  Sample
//
//  Created by Kenny on 2/27/20.
//  Copyright © 2020 Hazy Studios. All rights reserved.
//

import UIKit
import LoadingIndicator

class SampleLoadingController: LoadingViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let dimension: CGFloat = 50
        let testRect = CGRect(x: view.center.x - dimension/2,
                              y: view.center.y - dimension/2,
                              width: dimension,
                              height: dimension)
        let testView = UIView(frame: testRect)
        testView.backgroundColor = .systemRed
        view.addSubview(testView)
        load(on: testView)
    }
}
