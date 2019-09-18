//
//  LoadingViewController.swift
//  LoadingGif
//
//  Created by Bradley Yin on 9/18/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import Foundation
import UIKit

public class LoadingViewController: UIViewController {
    
    private var loadingView: IndeterminateLoadingView!
    private var button1: UIButton!
    private var button2: UIButton!
    
    override public func viewDidLoad() {
        self.view.backgroundColor = .white
        setupUI()
        
        startAnimation()
    }
    
    private func setupUI() {
        let screenWidth = UIScreen.main.bounds.width
        let loadingView = IndeterminateLoadingView(frame: CGRect(x: screenWidth / 2 - 150, y: 20, width: 300, height: 300))
        self.view.addSubview(loadingView)
        //loadingView.translatesAutoresizingMaskIntoConstraints = false
        //loadingView.widthAnchor.constraint(equalToConstant: 414).isActive = true
        //loadingView.heightAnchor.constraint(equalTo: loadingView.widthAnchor).isActive = true
        //loadingView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        //loadingView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.loadingView = loadingView
        
        let button1 = UIButton()
        self.view.addSubview(button1)
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.widthAnchor.constraint(equalToConstant: 50).isActive = true
        button1.heightAnchor.constraint(equalToConstant: 20).isActive = true
        button1.topAnchor.constraint(equalTo: view.topAnchor, constant: 400).isActive = true
        button1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button1.setTitleColor(.black, for: .normal)
        button1.setTitle("stop", for: .normal)
        button1.addTarget(self, action: #selector(stopAnimation), for: .touchUpInside)
        self.button1 = button1
    
        
//        let button2 = UIButton()
//        self.view.addSubview(button2)
//        button2.translatesAutoresizingMaskIntoConstraints = false
//        button2.widthAnchor.constraint(equalToConstant: 50).isActive = true
//        button2.heightAnchor.constraint(equalToConstant: 20).isActive = true
//        button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 30).isActive = true
//        button2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        button2.setTitleColor(.black, for: .normal)
//        button2.setTitle("leave", for: .normal)
//        self.button2 = button2
        
    }
    
    private func startAnimation() {
        loadingView.startAnimating()
    }
    
    @objc private func stopAnimation() {
        self.dismiss(animated: true, completion: nil)
        loadingView.stopAnimating()
    }
    
}
