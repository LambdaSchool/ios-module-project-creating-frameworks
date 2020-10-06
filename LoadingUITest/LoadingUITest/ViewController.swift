//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Cora Jacobson on 10/5/20.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

    var animationDuration: CGFloat = 5
    let loadingViewController = LoadingViewController()
    
    @IBOutlet weak var animationLengthLabel: UILabel!
    @IBOutlet weak var animationLengthSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLengthSlider.value = 5
        loadingViewController.duration = animationDuration
    }

    @IBAction func animationLengthSelected(_ sender: UISlider) {
        animationDuration = CGFloat(sender.value)
        loadingViewController.duration = CGFloat(sender.value)
        let labelValue = Int(sender.value)
        if labelValue > 1 {
            animationLengthLabel.text = "Animation Length: \(labelValue) seconds"
        } else {
            animationLengthLabel.text = "Animation Length: \(labelValue) second"
        }
    }
    
    @IBAction func theButtonWasTapped(_ sender: UIButton) {
        self.present(loadingViewController, animated: true, completion: nil)
        perform(#selector(dismissModalVC), with: nil, afterDelay: TimeInterval(animationDuration + 1))
    }
    
    @objc func dismissModalVC() {
        self.dismiss(animated:true, completion: nil)
    }
    
}

