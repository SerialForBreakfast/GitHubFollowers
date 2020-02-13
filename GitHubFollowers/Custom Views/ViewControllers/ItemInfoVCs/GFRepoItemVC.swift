//
//  GFRepoItemVC.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 2/11/20.
//  Copyright © 2020 Joseph McCraw. All rights reserved.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
        
        
    }
}
