//
//  GitHubError.swift
//  GitHub Followers
//
//  Created by Ante on 11.03.2021..
//

import Foundation

// My custom error messages.

enum GitHubError: String, Error {
    case invalidUsername  = "This username created an invalid request, please try again."
    case invalidResponse  = "Invalid response from the server, please try again."
    case unableToComplete = "Unable to complete request, please check your internet connection."
    case invalidData = "The data recieved from the server is invalid, please try again."
}
