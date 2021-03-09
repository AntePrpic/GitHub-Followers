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
    
    init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        
        configure()
    }
    
    private func configure() {
        textColor = .label
        adjustsFontSizeToFitWidth = true    // shrink to fit
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail // too big --> loooongusernam...
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
