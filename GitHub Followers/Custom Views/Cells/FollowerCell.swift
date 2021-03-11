//
//  FollowerCell.swift
//  GitHub Followers
//
//  Created by Ante on 11.03.2021..
//

import UIKit

class FollowerCell: UICollectionViewCell {
    static let reuseID = "FollowerCell" // don't forget it!!!
    
    let avatarImageView = GitHubAvatarImageView(frame: .zero)
    let usernameLabel = GitHubTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
        avatarImageView.downloadImage(from: follower.avatarUrl)
    }
    
    private func configure() {
        addSubview(avatarImageView)
        addSubview(usernameLabel)
        
        let avatarPadding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: avatarPadding),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: avatarPadding),
            avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -avatarPadding),
            avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor, constant: avatarPadding),
            usernameLabel.trailingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: -avatarPadding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
