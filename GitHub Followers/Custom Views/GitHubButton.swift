//
//  GitHubButton.swift
//  GitHub Followers
//
//  Created by Ante on 08.03.2021..
//

import UIKit

class GitHubButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    
        configure()
    }
    
    required init?(coder: NSCoder) {
        // handling when using via storyboard
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)    // aka bold
        translatesAutoresizingMaskIntoConstraints = false
//        Needs to be set to false when:
//        You Create a UIView-based object in code (Storyboard/NIB will set it for you if the file has autolayout enabled),
//        And you want to use auto layout for this view rather than frame-based layout,
//        And the view will be added to a view hierarchy that is using auto layout
    }
    
}
