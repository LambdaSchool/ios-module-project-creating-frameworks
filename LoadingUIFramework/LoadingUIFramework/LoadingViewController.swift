//
//  LoadingViewController.swift
//  LoadingUIFramework
//
//  Created by Jonalynn Masters on 12/18/19.
//  Copyright © 2019 Jonalynn Masters. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

	var loadingView = IndeterminateLoadingView()

	override public func viewDidLoad() {
        super.viewDidLoad()

    }

	/** Adds the loading animation to a UIView. Setup a `UIView` and pass it into this method. Your view will now have the loading animation added as a subview. */
	public func addLoadingView(with view: UIView) {
		loadingView = IndeterminateLoadingView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
		view.addSubview(loadingView)
	}

	/// Starts animation of the Loading View
	public func startAnimation() {
		loadingView.startAnimating()
	}

	/// Stops animation of the Loading View
	public func stopAnimation() {
		loadingView.stopAnimating()
	}

}
