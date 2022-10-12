//
//  GFButton.swift
//  GithubFollowers
//
//  Created by Umut Can Ertürk on 10.10.2022.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(backGroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.layer.cornerRadius = 10
        self.backgroundColor = backGroundColor
        self.setTitle(title, for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
