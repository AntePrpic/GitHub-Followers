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
//
//    func showLoadingView() {
//        containerView = UIView(frame: view.bounds)
//        view.addSubview(containerView)
//
//        containerView.backgroundColor = .systemBackground
//        containerView.alpha = 0 // fully transparent
//
//        UIView.animated(withDuration: 0.25) {
//            containerView.alpha = 0.8
//        }
//        let activityIndicator = UIActivityIndicatorView(style: .large)
//        containerView.addSubview(activityIndicator)
//
//        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
//        activityIndicator.color = .systemGreen
//
//        NSLayoutConstraint.activate([
//            activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//        ])
//
//        activate.startAnimating()
//    }
//
//}

//fileprivate var containerView: UIView!
//
//extension UIViewController {
//
//    func presentGitHubAlertOnMainThread(title: String, message: String, buttonTitle: String) {
//        DispatchQueue.main.async {
//            let alertVC = GitHubAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
//            alertVC.modalPresentationStyle  = .overFullScreen
//            alertVC.modalTransitionStyle    = .crossDissolve
//            self.present(alertVC, animated: true)
//        }
//    }
    
}
