//
//  SearchVC.swift
//  GithubFollowers
//
//  Created by Umut Can Ertürk on 10.10.2022.
//

import UIKit

class SearchVC: UIViewController {

    let logoImageView = UIImageView()
    let usernameTextField = GFTextField(frame: .zero)
    let getInfoButton = GFButton(backGroundColor: .systemGreen, title: "Get Followers")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemBackground
        configureUI()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func configureUI() {
        connfigureLogoImageView()
        configureTextField()
        configureGetInfoButton()
    }
    
    func connfigureLogoImageView() {
        self.view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
        
        ])
    }
    
    func configureTextField() {
        self.view.addSubview(usernameTextField)
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
            usernameTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            usernameTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            usernameTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configureGetInfoButton() {
        self.view.addSubview(getInfoButton)
        
        NSLayoutConstraint.activate([
            getInfoButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -48),
            getInfoButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            getInfoButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            getInfoButton.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    
    

}
