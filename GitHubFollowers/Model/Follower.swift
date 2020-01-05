//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 1/4/20.
//  Copyright © 2020 Joseph McCraw. All rights reserved.
//

import Foundation

struct Follower: Codable {
    var login: String
    var avatarUrl: String  // Snake Case in response, original parameter: avatar_url
}
