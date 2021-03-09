//
//  ErrorMessage.swift
//  GitHub Followers
//
//  Created by Ante on 09.03.2021..
//

import Foundation

enum ErrorMessage: String {
    case invalidUsername  = "This username created an invalid request, please try again."
    case invalidResponse  = "Invalid response from the server, please try again."
    case unableToComplete = "Unable to complete request, please check your internet connection."
}
