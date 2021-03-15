//
//  GitHubItemInfoViewController.swift
//  GitHub Followers
//
//  Created by Ante on 15.03.2021..
//

import UIKit

// superclass

class GitHubItemInfoViewController: UIViewController {
    
    let stackView = UIStackView()
    let itemInfoViewOne = GitHubItemInfoView()
    let itemInfoViewTwo = GitHubItemInfoView()
    let actionButton = GitHubButton()
    
    var user: User!
    weak var delegate: UserInfoViewControllerDelegate!
    
    init(user: User) {
        super.init(nibName: nil, bundle: nil)
        self.user = user
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        configureActionButton()
        configure()
    }
    
    private func configureActionButton() {
        actionButton.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
    }
    
    @objc func actionButtonTapped() {
        // nothing because you'll override it
    }
  
    private func configure() {
        view.layer.cornerRadius = 18
        view.backgroundColor = .secondarySystemBackground
        
        view.addSubview(stackView)
        view.addSubview(actionButton)
        
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(itemInfoViewOne)
        stackView.addArrangedSubview(itemInfoViewTwo)
        
        let padding: CGFloat = 20
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            stackView.heightAnchor.constraint(equalToConstant: 50),

            actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding+5),
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding-5),
            actionButton.heightAnchor.constraint(equalToConstant: 44),
            
        ])
    }
    
}
