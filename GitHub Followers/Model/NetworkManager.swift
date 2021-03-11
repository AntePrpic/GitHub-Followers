//
//  NetworkManager.swift
//  GitHub Followers
//
//  Created by Ante on 09.03.2021..
//

import UIKit

class NetworkManager {
    // create the singleton --> every network manager will have access to it
    static let shared = NetworkManager()
    private let baseURL = K.apiUrl
    let cache = NSCache<NSString, UIImage>()
    //var followersPerPage: Int?
    
    private init() {}
    
    // return followers or error
//    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, ErrorMessage?) -> Void ) {
    func getFollowers(for username: String, page: Int, completed: @escaping (Result<[Follower], GitHubError>) -> Void ) {

        let endpoint = baseURL + "/users/" + "\(username)" + "/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            //completed(nil, ErrorMessage.invalidUsername)
            completed(.failure(.invalidUsername))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            guard let data = data else {
                completed(.failure(.unableToComplete))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                //self.followersPerPage = followers.count
                //completed(followers, nil)
                completed(.success(followers))
            } catch {
                //completed(nil, error.localizedDescription)
                completed(.failure(.invalidData))
            }
        }
        task.resume() // DON'T FORGET THIS!
    }
    
}
