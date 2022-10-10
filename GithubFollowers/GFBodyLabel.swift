//
//  GFBodyLabel.swift
//  GithubFollowers
//
//  Created by Umut Can Ertürk on 10.10.2022.
//

import UIKit

class GFBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(alignment: NSTextAlignment) {
        super.init(frame: .zero)
        self.textAlignment = alignment
        self.font = UIFont.preferredFont(forTextStyle: .body)
        self.textColor = .secondaryLabel
        self.adjustsFontSizeToFitWidth = true
        self.minimumScaleFactor = 0.75
        self.lineBreakMode = .byWordWrapping
        self.numberOfLines = 0
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
