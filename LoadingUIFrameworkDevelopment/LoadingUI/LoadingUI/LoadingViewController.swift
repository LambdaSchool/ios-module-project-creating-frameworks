//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Dillon P on 12/10/19.
//  Copyright © 2019 Lambda iOSPT2. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {
    
    let centerX = UIScreen.main.bounds.size.width*0.5
    let centerY = UIScreen.main.bounds.size.height*0.5
    let width: CGFloat = 100.0
    let height: CGFloat = 100.0

    override public func viewDidLoad() {
        super.viewDidLoad()
        setUpButtons()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .white
        indeterminateLoadingView = IndeterminateLoadingView(frame: CGRect(x: centerX - width/2, y: centerY - height/2, width: width, height: height))
        setUpUI()
        startAnimating()
    }
    
    var indeterminateLoadingView: IndeterminateLoadingView!
   
    private func startAnimating() {
        indeterminateLoadingView.startAnimating()
    }
    
    private func stopAnimating() {
        indeterminateLoadingView.stopAnimating()
    }
    
    private func setUpUI() {
        view.addSubview(indeterminateLoadingView)
    }
    
    private func setUpButtons() {
        
        let startButton = UIButton(frame: CGRect(x: centerX-width, y: centerY+width, width: width*2, height: height/2.0))
        startButton.setTitle("Start Animating", for: .normal)
        startButton.setTitleColor(.green, for: .normal)
        startButton.addTarget(self, action: #selector(self.startButton), for: .touchUpInside)
        
        let stopButton = UIButton(frame: CGRect(x: centerX-width, y: centerY+width*2, width: width*2, height: height/2.0))
        stopButton.setTitle("Stop Animating", for: .normal)
        stopButton.setTitleColor(.red, for: .normal)
        stopButton.addTarget(self, action: #selector(self.stopButton), for: .touchUpInside)
        
        guard let view = view else { return }
        
        view.addSubview(startButton)
        view.addSubview(stopButton)
        
    }
    
    @objc func startButton() {
        startAnimating()
    }
    
    @objc func stopButton() {
        stopAnimating()
    }

}
