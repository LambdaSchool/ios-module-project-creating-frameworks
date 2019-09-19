//
//  SimpleVC.swift
//  LoadingUITest
//
//  Created by Jeffrey Santana on 9/18/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import UIKit
import LoadingUI

class SimpleVC: UIViewController {

	//MARK: - IBOutlets
	
	@IBOutlet weak var spinnerView: UIView!
	@IBOutlet weak var spinner2View: UIView!
	@IBOutlet weak var spinner3View: UIView!
	
	//MARK: - Properties
	
	var loaders = [LoadingVC]()
	
	//MARK: - Life Cycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupSpinners(on: [spinnerView, spinner2View, spinner3View])
	}
	
	//MARK: - IBActions
	
	@IBAction func spinnerSwitch(_ sender: UISwitch) {
		if sender.isOn {
			loaders.forEach({$0.startloading()})
		} else {
			loaders.forEach({$0.stopLoading()})
		}
	}
	
	//MARK: - Helpers
	
	private func setupSpinners(on views: [UIView]) {
		views.forEach{
			let loader = LoadingVC()
			loader.setupLoadingView(on: $0)
			loader.startloading()
			loaders.append(loader)
		}
	}
}
