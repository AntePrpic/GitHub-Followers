//
//  GitHubAvatarImageView.swift
//  GitHub Followers
//
//  Created by Ante on 11.03.2021..
//

import UIKit

class GitHubAvatarImageView: UIImageView {
    
    let cache = NetworkManager.shared.cache

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        // You don't need to set view.clipsToBounds = true for corners to be round.
        // You only need clipsToBounds if you have subviews that you need to be clip to the parent bounds.
        clipsToBounds = true
        image = Images.placeholder
        translatesAutoresizingMaskIntoConstraints = false
    }
}

