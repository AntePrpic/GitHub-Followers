//
//  GitHubBodyLabel.swift
//  GitHub Followers
//
//  Created by Ante on 09.03.2021..
//

import UIKit

class GitHubBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Use dynamic fonts
    convenience init(textAlignment: NSTextAlignment? = .center, style: UIFont.TextStyle? = .body, textColor: UIColor? = .label, lineBreakMode: NSLineBreakMode? = .byWordWrapping) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment!
        self.font = UIFont.preferredFont(forTextStyle: style!)
        self.textColor = textColor!
        self.lineBreakMode = lineBreakMode!
    }
    
    private func configure() {
        adjustsFontSizeToFitWidth = true    // shrink to fit
        minimumScaleFactor = 0.75
        translatesAutoresizingMaskIntoConstraints = false
    }

}
