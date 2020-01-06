//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 1/5/20.
//  Copyright © 2020 Joseph McCraw. All rights reserved.
//

import Foundation

enum ErrorMessage: String {
    case invalidUsername = "This username created an invalid request."
    case unableToComplete =  "Unable to complete request.  Check your internet connection"
    case invalidResponse = "Invalid Response.  Please try again. "
    case invalidData = "Data was invalid."
}
