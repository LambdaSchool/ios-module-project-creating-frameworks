//
//  TestRingViewController.swift
//  LoadingUITest
//
//  Created by Cody Morley on 6/17/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

import UIKit
import LoadingUI

class TestRingViewController: LoadingViewController {
    //MARK: - Properties -
    @IBOutlet weak var testButton: UIButton!
    
    var isTesting: Bool = false
    
    //MARK: - Life Cycles -
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK: - Actions -
    @IBAction func startTest(_ sender: Any) {
        switch isTesting {
        case false:
            newRing()
            startRing()
            isTesting.toggle()
        case true:
            stopRing()
            isTesting.toggle()
        }
    }
}
