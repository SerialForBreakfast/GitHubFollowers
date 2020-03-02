//
//  GFTabBarController.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 2/28/20.
//  Copyright © 2020 Joseph McCraw. All rights reserved.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        let tabBarVCs: [UIViewController] = [createSearchNavigationController(), createFavoritesNavigationController()]
        viewControllers = tabBarVCs
    }
    
   
    func createSearchNavigationController() -> UINavigationController {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        return UINavigationController(rootViewController: searchVC)
    }
    
    
    func createFavoritesNavigationController() -> UINavigationController {
        let favoritesVC = FavoritesVC()
        favoritesVC.title = "Favorites"
        favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        return UINavigationController(rootViewController: favoritesVC)
        
    }
    

}
