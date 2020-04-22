//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by Lydia Zhang on 4/22/20.
//  Copyright © 2020 Lydia Zhang. All rights reserved.
//

import UIKit
import LoadingUI

class LoadingViewController: UIViewController {

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
    

    @IBAction func startLoad(_ sender: Any) {
        loadButton.isHidden = true
        view.addSubview(indeterminateLoadingView)
        indeterminateLoadingView.isHidden = false
        indeterminateLoadingView.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10 ) {
            self.indeterminateLoadingView.stopAnimating()
            self.indeterminateLoadingView.isHidden = true
            self.loadButton.isHidden = false
        }
    }


}
