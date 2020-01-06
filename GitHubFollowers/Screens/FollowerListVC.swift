//
//  FollowerListVC.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 12/31/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        print(username)
        navigationController?.navigationBar.prefersLargeTitles = true
        NetworkManager.shared.getFollowers(for: username, page: 1) { (followers, errorMessage) in
            guard let followers = followers else {
                self.presentGFAlertOnMainThread(title: "Something bad happened", message: errorMessage!.rawValue, buttonTitle: "ok")
                return
            }
            print(followers)
            let followerList = followers.description
            
            self.presentGFAlertOnMainThread(title: "Followers", message: "Follower Count:  \(followers.count),  JSON:  \(followerList)", buttonTitle: "ok")

        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
