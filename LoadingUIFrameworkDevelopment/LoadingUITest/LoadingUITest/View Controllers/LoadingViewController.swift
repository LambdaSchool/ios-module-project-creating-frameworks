//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by Bobby Keffury on 12/10/19.
//  Copyright © 2019 Bobby Keffury. All rights reserved.
//

import UIKit
import LoadingUI

class LoadingViewController: UIViewController {

    
    @IBOutlet weak var loadingView: IndeterminateLoadingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func runAnimation() {
        _ = self.view
        guard isViewLoaded else { return }
        loadingView.startAnimating()
        loadingView.stopAnimating()
    }
    

}
