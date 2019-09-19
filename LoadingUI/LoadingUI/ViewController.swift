//
//  ViewController.swift
//  LoadingUI
//
//  Created by Marlon Raskin on 9/18/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit
import LoadingUIFramework

class ViewController: UIViewController {

	let loadingVC = LoadingViewController()
	let loadingView = load

	@IBOutlet weak var toggleAnimationSwitch: UISwitch!
	@IBOutlet weak var loadingViewContainer: UIView!
	@IBOutlet weak var doneLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		toggleAnimationSwitch.onTintColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
		loadingVC.addLoadingView(with: loadingViewContainer)
		doneLabel.isHidden = true
	}

	func startAnimating() {
		loadingVC.startAnimation()
		doneLabel.isHidden = true
	}

	@IBAction func toggleAnimation(_ sender: UISwitch) {
		if toggleAnimationSwitch.isOn {
			loadingVC.startAnimation()
		} else {
			loadingVC.stopAnimation()
			doneLabel.isHidden = false
		}
	}

}

