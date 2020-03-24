//
//  User.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 1/5/20.
//  Copyright © 2020 Joseph McCraw. All rights reserved.
//

import Foundation

struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String?
    
    var company: String?
    var blog: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    
    let following: Int
    let followers: Int
    
    let createdAt: Date
    
}
