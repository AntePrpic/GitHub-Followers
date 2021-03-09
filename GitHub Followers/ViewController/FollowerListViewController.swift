//
//  FollowerListViewController.swift
//  GitHub Followers
//
//  Created by Ante on 09.03.2021..
//

import UIKit

// we can get here either by tapping the go button or tapping anywhere outside the textField

class FollowerListViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { (followers, error) in
            guard let followers = followers else {
                self.presentGitHubAlertOnMainThread(title: "Bad stuff", message: "errorMessage!", buttonTitle: "Ok")
                return
            }
            
            print("Followers: \(followers.count)")
            print(followers)
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }


}
