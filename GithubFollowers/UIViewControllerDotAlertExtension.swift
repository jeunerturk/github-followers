//
//  UIViewControllerDotAlertExtension.swift
//  GithubFollowers
//
//  Created by Umut Can Ertürk on 10.10.2022.
//

import UIKit

extension UIViewController {
    
     func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
        
    }
    
}
