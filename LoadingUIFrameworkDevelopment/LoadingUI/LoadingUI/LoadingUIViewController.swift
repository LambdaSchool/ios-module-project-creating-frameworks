//
//  LoadingUIViewController.swift
//  LoadingUI
//
//  Created by Joel Groomer on 12/10/19.
//  Copyright © 2019 Julltron. All rights reserved.
//

import UIKit

public class LoadingUIViewController: UIViewController {

    private let lbl = UILabel()
    private var circleCount = 5 { didSet { updateLabel() } }
    private var timer = Timer()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(lbl)
    }
    
    override public func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        lbl.text = "o o o o o"
        lbl.textAlignment = .natural
        lbl.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints = [NSLayoutConstraint(item: lbl, attribute: .centerX,
                                              relatedBy: .equal, toItem: view,
                                              attribute: .centerX,
                                              multiplier: 1.0, constant: 0.0),
                           NSLayoutConstraint(item: lbl, attribute: .centerY,
                                              relatedBy: .equal, toItem: view,
                                              attribute: .centerY,
                                              multiplier: 1.0, constant: 100.0),
                           NSLayoutConstraint(item: lbl, attribute: .width,
                                              relatedBy: .equal, toItem: nil,
                                              attribute: .notAnAttribute,
                                              multiplier: 1.0, constant: 68.0)
        ]
        view.addConstraints(constraints)
        
        doAnimation()
    }
    
    private func doAnimation() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.25, repeats: true) { _ in
            if self.circleCount == 5 {
                self.circleCount = 1
            } else {
                self.circleCount += 1
            }
        }
    }
    
    private func updateLabel() {
        self.lbl.text = ""
        var newText = ""
        for _ in 1...self.circleCount {
            newText = newText + "o "
        }
        DispatchQueue.main.async {
            self.lbl.text = newText
        }
    }

    public override func viewWillDisappear(_ animated: Bool) {
        timer.invalidate()
    }

}
