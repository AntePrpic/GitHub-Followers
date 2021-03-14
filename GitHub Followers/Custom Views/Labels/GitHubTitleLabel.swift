//
//  GitHubTitleLabel.swift
//  GitHub Followers
//
//  Created by Ante on 09.03.2021..
//

import UIKit

class GitHubTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(fontSize: CGFloat, textAlignment: NSTextAlignment = .center, textColor: UIColor = .label, weight: UIFont.Weight = .medium) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: weight)
        self.textColor = textColor
        
        configure()
    }
    
    private func configure() {
        adjustsFontSizeToFitWidth = true    // shrink to fit
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
