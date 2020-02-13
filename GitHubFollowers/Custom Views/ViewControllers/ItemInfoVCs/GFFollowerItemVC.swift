//
//  GFFollowerItemVC.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 2/13/20.
//  Copyright © 2020 Joseph McCraw. All rights reserved.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        
        actionButton.set(backgroundColor: .systemGreen, title: "Followers")
        
        
    }
}
