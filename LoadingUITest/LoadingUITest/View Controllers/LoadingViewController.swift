//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by Michael on 2/26/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit
import Loading_UI_Framwork

class LoadingViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var loadingLabel: UILabel!

    var indeterminateLoadingView: IndeterminateLoadingView = {
        let frame: CGRect = CGRect(origin: CGPoint(x: 187, y: 398.5), size: CGSize(width: 40, height: 40))
        let ilv = IndeterminateLoadingView(frame: frame)
        return ilv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingAnimation()
    }
    
    func loadingAnimation() {
        view.addSubview(indeterminateLoadingView)
        indeterminateLoadingView.startAnimating()
        loadingLabel.isHidden = false
        loadingLabel.text = "Loading..."
        imageView.isHidden = true
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(7_000)) {
            print("BOOYAH!")
            self.indeterminateLoadingView.stopAnimating()
            self.view.willRemoveSubview(self.indeterminateLoadingView)
            self.loadingLabel.isHidden = true
            self.imageView.isHidden = false
            self.imageView.image = UIImage(named: "elon-1")
            self.view.sendSubviewToBack(self.indeterminateLoadingView)
        }
        
//        let timer = Timer.scheduledTimer(withTimeInterval: 7.0, repeats: false, block: stoppingAnimation)
//        timer.fire()
        
    }
    
//    @objc func stoppingAnimation(timer: Timer) {
//        indeterminateLoadingView.stopAnimating()
//        self.loadingLabel.isHidden = true
//        imageView.isHidden = false
//        timer.invalidate()
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
