//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by Ian French on 8/11/20.
//  Copyright © 2020 Ian French. All rights reserved.
//

import UIKit

 public class LoadingViewController: UIViewController {

private var loadView = IndeterminateLoadingView()

    public override func viewDidLoad() {
        super.viewDidLoad()
        loadView.center = view.center
        setAnimation()
    }

    private func setAnimation () {



       let viewBoundary  = CGRect(x: 25, y: 25, width: 125, height: 125)

        self.loadView = IndeterminateLoadingView(frame: viewBoundary)
        loadView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loadView)


    }

    public func initiateLoadingGraphic() {
        loadView.startAnimating()
    }

     public func stopLoadingGraphic()  {
        loadView.stopAnimating()
        loadView.removeFromSuperview()
}


}
