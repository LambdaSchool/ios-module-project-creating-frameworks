//
//  ViewController.swift
//  LoadingUIExample
//
//  Created by Jon Bash on 2019-12-18.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loadingVC = segue.destination as? LoadingViewController
            else { return }
        
        loadingVC.delegate = self
        loadingVC.timeout = 5
        
        if segue.identifier == "PresentCompletingLoadingVC" {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                loadingVC.loadingDidFinish(withError: nil)
            }
        } else if segue.identifier == "PresentTimingOutLoadingVC" {
            // do nothing
        } else if segue.identifier == "PresentFailingLoadingVC" {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                loadingVC.loadingDidFinish(withError: URLError(.badURL))
            }
        }
    }
    
    private func presentSuccessAlert() {
        presentAlert(withTitle: "Success!",
                     message: "Data has finished loading.")
    }
    
    private func presentErrorAlert() {
        presentAlert(withTitle: "Error!",
                     message: "There was an error loading the data.")
    }
    
    private func presentTimeoutAlert() {
        presentAlert(withTitle: "Timed out!",
                     message: "Loading has taken too long and will cancel.")
    }
    
    private func presentAlert(withTitle title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: { action in
                self.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}

extension ViewController: LoadingViewControllerDelegate {
    func loadingViewController(
        _ loadingViewController: LoadingViewController,
        didFinishLoadingWithError error: Error?)
    {
        DispatchQueue.main.async {
            self.dismiss(animated: true) {
                if let error = error {
                    NSLog("Error! \(error)")
                    self.presentErrorAlert()
                } else {
                    self.presentSuccessAlert()
                }
            }
        }
    }
    
    func loadingViewControllerDidTimeOut(
        _ loadingViewController: LoadingViewController)
    {
        DispatchQueue.main.async {
            self.dismiss(animated: true) {
                self.presentTimeoutAlert()
            }
        }
    }
}
