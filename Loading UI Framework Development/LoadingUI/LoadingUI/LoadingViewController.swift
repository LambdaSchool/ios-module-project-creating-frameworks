//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Cody Morley on 6/17/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

import UIKit

open class LoadingViewController: UIViewController {
    //MARK: - Properties -
    private var loadingRing: IndeterminateLoadingView?
    
    
    //MARK: - Life Cycles -
    open override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK: - Methods -
    ///must call new ring before calling start or stop ring on screen.
    public func newRing() {
        let ringBounds = CGRect(x: 25, y: 25, width: 75, height: 68)
        self.loadingRing = IndeterminateLoadingView(frame: ringBounds)
        loadingRing?.translatesAutoresizingMaskIntoConstraints = false
        if let ring = loadingRing {
            view.addSubview(ring)
        }
        loadingRing?.center = view.center
    }
    
    public func startRing() {
        loadingRing?.startAnimating()
    }
    
    public func stopRing() {
        loadingRing?.stopAnimating()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
