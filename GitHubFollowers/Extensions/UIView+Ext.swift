//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 3/24/20.
//  Copyright © 2020 Joseph McCraw. All rights reserved.
//

import UIKit

extension UIView {
    //Add views using variadic parameters
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
