//
//  GitHubAlertViewController.swift
//  GitHub Followers
//
//  Created by Ante on 09.03.2021..
//

import UIKit

// prvo title na vrh pa onda button na dno te konacno body u sredinu

class GitHubAlertViewController: UIViewController {
    
    let containerView = UIView()
    let titleLabel = GitHubTitleLabel(fontSize: 20, textAlignment: .center)
    let bodyLabel = GitHubBodyLabel(textAlignment: .center, style: .body, textColor: .secondaryLabel)
    let actionButton = GitHubButton(backgroundColor: .systemPink, title: "OK")

    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
        
    init(title: String, message: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        
        self.alertTitle = title
        self.message = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        configureContainerView()
        configureTitleLabel()
        configureActionButton()
        configureBodyLabel()
    }
    
    func configureContainerView() {
        view.addSubview(containerView)
        
        containerView.backgroundColor = .systemBackground
        containerView.layer.cornerRadius = 16
        containerView.layer.borderWidth = 2 // need for dark mode
        containerView.layer.borderColor = UIColor.white.cgColor
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
//        NSLayoutConstraint.activate([
//            containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
//            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
//            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
//            containerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200)
//        ])
        
        NSLayoutConstraint.activate([
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 280),
            containerView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    
    func configureTitleLabel() {
        containerView.addSubview(titleLabel)
        titleLabel.text = alertTitle ?? "Something went wrong"
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: K.padding),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: K.padding),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -K.padding),
//            titleLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -padding)
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    func configureActionButton() {
        containerView.addSubview(actionButton)
        actionButton.setTitle(buttonTitle ?? "Ok", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -K.padding),
            actionButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: K.padding),
            actionButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -K.padding),
            actionButton.heightAnchor.constraint(equalToConstant: K.button)
        ])
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    
    func configureBodyLabel() {
        containerView.addSubview(bodyLabel)
        bodyLabel.text = message ?? "Unable to complete request"
        bodyLabel.numberOfLines = 3
        
        NSLayoutConstraint.activate([
            bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            bodyLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -12),
            bodyLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: K.padding),
            bodyLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -K.padding)
        ])
    }


}
