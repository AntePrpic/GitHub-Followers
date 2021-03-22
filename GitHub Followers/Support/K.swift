//
//  K.swift
//  GitHub Followers
//
//  Created by Ante on 09.03.2021..
//

import UIKit

struct K {
    
    static let button: CGFloat = 50
    static let padding: CGFloat = 20
    
    static let apiUrl: String = "https://api.github.com"
}

enum SFSymbols {
    static let location     = UIImage(systemName: "mappin.and.ellipse")
    static let repos        = UIImage(systemName: "folder")
    static let gists        = UIImage(systemName: "text.alignleft")
    static let followers    = UIImage(systemName: "heart")
    static let following    = UIImage(systemName: "person.2")
}


enum Images {
    static let placeholder      = UIImage(named: "avatar-placeholder")
    static let emptyStateLogo   = UIImage(named: "empty-state-logo")
    static let ghLogo           = UIImage(named: "gh-logo")
}


enum ScreenSize {
    static let width        = UIScreen.main.bounds.size.width
    static let height       = UIScreen.main.bounds.size.height
    static let maxLength    = max(ScreenSize.width, ScreenSize.height)
    static let minLength    = min(ScreenSize.width, ScreenSize.height)
}
