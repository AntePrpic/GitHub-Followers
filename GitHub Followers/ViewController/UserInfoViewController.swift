//
//  UserInfoViewController.swift
//  GitHub Followers
//
//  Created by Ante on 13.03.2021..
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var username: String!
    let header = GitHubUserHeaderViewController(login: "username", name: "nil", location: "nil", bio: "nil")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
    }
    
    private func configureViewController() {
        view.addSubview(header.view)
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        NetworkManager.shared.getUserInfo(for: username) { [weak self] (result) in
            guard let self = self else { return }
            switch result {
            case .success(let user):
                print(user)
            case .failure(_):
                self.presentGitHubAlertOnMainThread(title: "Something went wrong", message: "Error.rawValue", buttonTitle: "OK")
            }
        }
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
