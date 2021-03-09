//
//  UIViewController+Ext.swift
//  GitHub Followers
//
//  Created by Ante on 09.03.2021..
//

import UIKit

extension UIViewController {
    
    func presentGitHubAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GitHubAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve // quick fade-in
            self.present(alertVC, animated: true)
        }
    }
    
}
