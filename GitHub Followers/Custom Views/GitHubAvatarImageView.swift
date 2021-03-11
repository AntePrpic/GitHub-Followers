//
//  GitHubAvatarImageView.swift
//  GitHub Followers
//
//  Created by Ante on 11.03.2021..
//

import UIKit

class GitHubAvatarImageView: UIImageView {
    
    let placeholderImage = UIImage(named: "avatar-placeholder")

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        // You don't need to set view.clipsToBounds = true for corners to be round.
        // You only need clipsToBounds if you have subviews that you need to be clip to the parent bounds.
        clipsToBounds = true
        image = placeholderImage!
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func downloadImage(from urlString: String) {
        guard let url = URL(string: urlString) else { return }  // using placeholder image as "error"
        
        let task = URLSession.shared.dataTask(with: url) { [weak self](data, response, error) in
            guard let self = self else { return }
            if error != nil { return }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { return }
            guard let data = data else { return }
            
            guard let image = UIImage(data: data) else { return }
            
            // UI updating always on MAIN thread
            DispatchQueue.main.async {
                self.image = image
            }
        }
        task.resume()
    }
    
}
