//
//  NetworkManager.swift
//  GitHub Followers
//
//  Created by Ante on 09.03.2021..
//

import Foundation

class NetworkManager {
    // create the singleton --> every network manager will have access to it
    static let shared = NetworkManager()
    let baseURL = K.apiUrl
    
    private init() {}
    
    // return followers or error
    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, ErrorMessage?) -> Void ) {
        let endpoint = baseURL + "/users/" + "\(username)" + "/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, ErrorMessage.invalidUsername)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let _ = error {
                completed(nil, ErrorMessage.invalidResponse)
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, ErrorMessage.invalidResponse)
                return
            }
            guard let data = data else {
                completed(nil, ErrorMessage.unableToComplete)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                //completed(nil, error.localizedDescription)
                completed(nil, ErrorMessage.unableToComplete)
            }
        }
        task.resume() // DON'T FORGET THIS!
    }
    
}
