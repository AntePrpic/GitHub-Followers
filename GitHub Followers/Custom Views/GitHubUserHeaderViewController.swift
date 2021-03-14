//
//  GitHubUserHeaderViewController.swift
//  GitHub Followers
//
//  Created by Ante on 14.03.2021..
//

import UIKit

class GitHubUserHeaderViewController: UIViewController {
    
   // let login: String!
    //var user = User(from: iser)
    let containerView = UIView()
    let usernameTitleLabel = GitHubTitleLabel(textAlignment: .center, fontSize: 40)
    let nameTitleLabel = GitHubTitleLabel(textAlignment: .left, fontSize: 25)
    let locationTitleLabel = GitHubTitleLabel(textAlignment: .left, fontSize: 25)
    let bioBodyLabel = GitHubBodyLabel(textAlignment: .center)
    
    var login: String!
    var name: String?
    var location: String?
    var bio: String?
    
    init(login: String, name: String, location: String, bio: String) {
        super.init(nibName: nil, bundle: nil)
        
        self.login = "ante69"
        self.name = "Ante Prpic"
        self.location = "ZAGREB"
        self.bio = "idjswohdj ijo ik234i124h hdfsjdflkas dasihj o:D"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPink
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            containerView.leadingAnchor .constraint(equalTo: view.leadingAnchor, constant: 40),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            containerView.widthAnchor.constraint(equalToConstant: view.bounds.width - 80)  // actual view width
        ])
        
    }
    

    

}
