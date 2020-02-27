//
//  ViewController.swift
//  WhatLoadingSingleApp
//
//  Created by Aaron Cleveland on 2/26/20.
//  Copyright © 2020 Aaron Cleveland. All rights reserved.
//

import UIKit
import WhatLoading

class ViewController: LoadingViewController {
    
    @IBOutlet weak var pinkView: UIView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        test()
    }
    
    func test() {
        let testRect = CGRect(x: 50,
                              y: 50,
                              width: 50,
                              height: 50)
        let testView = UIView(frame: testRect)
        testView.backgroundColor = .systemRed
        view.addSubview(testView)
        load(on: testView)
        
        let testRect2 = CGRect(x: 325,
                              y: 50,
                              width: 50,
                              height: 50)
        let testView2 = UIView(frame: testRect2)
        testView2.backgroundColor = .systemRed
        view.addSubview(testView2)
        load(on: testView2)
    }
}

