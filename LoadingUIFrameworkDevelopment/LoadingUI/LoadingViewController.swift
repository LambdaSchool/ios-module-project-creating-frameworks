//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Jessie Ann Griffin on 4/28/20.
//  Copyright © 2020 Jessie Griffin. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()

        let shapeView = IndeterminateLoadingView()
        shapeView.startAnimating()
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
