//
//  GFError.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 1/23/20.
//  Copyright © 2020 Joseph McCraw. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request."
    case unableToComplete =  "Unable to complete request.  Check your internet connection"
    case invalidResponse = "Invalid Response.  Please try again. "
    case invalidData = "Data was invalid."
    case unableToFavorite = "There was an error with favorites."
    case alreadyInFavorites = "You've already favorited this user."
}
