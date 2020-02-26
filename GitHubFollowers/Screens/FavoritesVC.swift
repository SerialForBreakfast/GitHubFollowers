//
//  FavoritesVC.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 12/30/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import UIKit

class FavoritesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }
    


}
