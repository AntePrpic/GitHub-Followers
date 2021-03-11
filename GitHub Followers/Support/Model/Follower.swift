//
//  Follower.swift
//  GitHub Followers
//
//  Created by Ante on 09.03.2021..
//

import Foundation

// https://docs.github.com/en/rest/reference/users#followers

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String // convertable from snake_cast :: avatar_url

//    func hash(into hasher: inout Hasher) {
//        hasher.combine(login)
//    }
    
}
