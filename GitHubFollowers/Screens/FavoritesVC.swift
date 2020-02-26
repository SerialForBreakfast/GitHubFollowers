//
//  FavoritesVC.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 12/30/19.
//  Copyright © 2019 Joseph McCraw. All rights reserved.
//

import UIKit

class FavoritesVC: UIViewController {
    let tableView = UITableView()
    var favorites: [Follower] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureVC()
        configureTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getFavorites()
    }
    
    func configureVC() {
        view.backgroundColor = .systemBackground
        title = "Favorites"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.rowHeight = 80
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(GFFavoriteCell.self, forCellReuseIdentifier: GFFavoriteCell.reuseID)
    }
    
    func getFavorites() {
        PersistenceManager.retrieveFavorites { [weak self] result in
            guard let self = self else { return }
            switch result {
                case .success(let favorites):
                    if favorites.isEmpty {
                        self.showEmptyStateView(with: "No Favorites\nAdd Favorites on Follower Screen", in: self.view)
                    } else {
                        self.favorites = favorites
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                            self.view.bringSubviewToFront(self.tableView) //Hack to ensure
                        }
                    }
                case .failure(let error):
                    print("Error retreiving Favorites: \(error.localizedDescription)")
                    self.presentGFAlertOnMainThread(title: "Something went wrong", message: "Error retreiving Favorites: \(error.localizedDescription)", buttonTitle: "OK")
            }
        }
    }
}


extension FavoritesVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favorites.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GFFavoriteCell.reuseID) as! GFFavoriteCell
        let favorite = favorites[indexPath.row]
        cell.set(favorite: favorite)
        
        
        return cell
    }
    
    
    
    
}
