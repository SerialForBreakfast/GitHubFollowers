//
//  UserInfoVC.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 1/23/20.
//  Copyright © 2020 Joseph McCraw. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController {
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(username!)
        view.backgroundColor = .brown
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
    }
    @objc func dismissVC() {
        dismiss(animated: true, completion: nil)
    }
}
