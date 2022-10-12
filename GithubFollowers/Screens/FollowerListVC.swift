//
//  FollowerListVC.swift
//  GithubFollowers
//
//  Created by Umut Can Ertürk on 10.10.2022.
//

import UIKit

class FollowerListVC: UIViewController {

    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NetworkManager.shared.getFollowers(for: userName, page: 1) { result in
            
            switch result {
            case .success(let followers):
                print(followers)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "STH Went Wrong", message: error.rawValue, buttonTitle: "Ok")
            }
            
        }
    }
    
}


