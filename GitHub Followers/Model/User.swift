//
//  User.swift
//  GitHub Followers
//
//  Created by Ante on 09.03.2021..
//

import Foundation

struct User: Codable, Hashable {
    let login: String
    let avatarUrl: String
    var htmlUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var following: Int
    var followers: Int
    let createdAt: String
}
