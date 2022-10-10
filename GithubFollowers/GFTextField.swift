//
//  GFTextField.swift
//  GithubFollowers
//
//  Created by Umut Can Ertürk on 10.10.2022.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.systemGray4.cgColor
       
        self.textColor = UIColor.label
        self.tintColor = UIColor.label
        self.textAlignment = .center
        self.font = UIFont.preferredFont(forTextStyle: .title2)
        self.adjustsFontSizeToFitWidth = true
        self.minimumFontSize = 12
        
        self.returnKeyType = .go
        
        self.backgroundColor = .tertiarySystemBackground
        self.autocorrectionType = .no
        
        self.placeholder = "Enter a username..."
        
        
    }
    
}
