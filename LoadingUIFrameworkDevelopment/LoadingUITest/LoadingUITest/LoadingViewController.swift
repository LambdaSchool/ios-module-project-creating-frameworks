//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by Ufuk Türközü on 25.03.20.
//  Copyright © 2020 Ufuk Türközü. All rights reserved.
//

import UIKit
import LoadingUI

class LoadingViewController: UIViewController {
    
    @IBOutlet weak var loadButton: UIButton!
    
    var indeterminateLoadingView: IndeterminateLoadingView = {
        let size: CGFloat = 60
        let midX = UIScreen.main.bounds.width / 2 - size / 2
        let midY = UIScreen.main.bounds.height / 2 - size / 2
        let frame: CGRect = CGRect(origin: CGPoint(x: midX, y: midY), size: CGSize(width: size, height: size))
        return IndeterminateLoadingView(frame: frame)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startLoading(_ sender: Any) {

        view.addSubview(indeterminateLoadingView)
        indeterminateLoadingView.isHidden = false
        indeterminateLoadingView.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5)) {
            self.indeterminateLoadingView.stopAnimating()
            self.indeterminateLoadingView.isHidden = true
        }
    }

}

