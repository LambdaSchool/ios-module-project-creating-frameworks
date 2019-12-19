//
//  LoadUITestViewController.swift
//  LoadingUITest
//
//  Created by Lambda_School_Loaner_204 on 12/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import LoadingUIFramework

class LoadUITestViewController: LoadingViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimation()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        stopAnimation()
    }

}
