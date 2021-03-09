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
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }


}
