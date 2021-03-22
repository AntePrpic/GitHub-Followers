//
//  GitHubTextField.swift
//  GitHub Followers
//
//  Created by Ante on 08.03.2021..
//

import UIKit

class GitHubTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor = .label // black on white, white on dark mode
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true // long username == shrink font
        minimumFontSize = 12
        
        backgroundColor = .tertiarySystemBackground // dark mode slightly less dark
        autocorrectionType = .no
//        keyboardType = .default
        clearButtonMode = .whileEditing
        returnKeyType = .go
        
        placeholder = "Enter a username"
    }
}
