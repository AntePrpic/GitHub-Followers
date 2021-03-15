//
//  GitHubFollowerItemVC.swift
//  GitHub Followers
//
//  Created by Ante on 15.03.2021..
//

import Foundation

class GitHubFollowerItemVC: GitHubItemInfoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemBlue, title: "Get Followers")
    }
    
    override func actionButtonTapped() {
        guard user.followers != 0 else {
            presentGitHubAlertOnMainThread(title: "No followers!", message: "Sad life", buttonTitle: "OK")
            return
        }
        delegate.didTapGetFollowers(for: user) // 1st step --> hey delegate listen for this --> followerListVC
        dismiss(animated: true)
        
    }
    
}
