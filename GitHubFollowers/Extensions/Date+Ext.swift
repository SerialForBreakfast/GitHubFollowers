//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 2/25/20.
//  Copyright © 2020 Joseph McCraw. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
    

}
