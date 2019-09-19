//
//  LoadingVC.swift
//  LoadingUITest
//
//  Created by Jeffrey Santana on 9/18/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import UIKit

public class LoadingVC: UIViewController {
	
	private var loadingview = IndeterminateLoadingView()

	override public func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		setupLoadingView(on: view)
		loadingview.startAnimating()
	}

	public func setupLoadingView(on view: UIView) {
		loadingview = IndeterminateLoadingView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
		view.addSubview(loadingview)
	}
	
	public func startloading() {
		loadingview.startAnimating()
	}
	
	public func stopLoading() {
		loadingview.stopAnimating()
	}
}

