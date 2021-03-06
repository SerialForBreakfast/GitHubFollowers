//
//  GFItemInfoVC.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 2/11/20.
//  Copyright © 2020 Joseph McCraw. All rights reserved.
//

import UIKit

class GFItemInfoVC: UIViewController {
    
    let stackView = UIStackView()
    let itemInfoViewOne = GFItemInfoView()
    let itemInfoViewTwo = GFItemInfoView()
    let actionButton = GFButton()
    
    var user: User!
    weak var delegate: UserInfoVCDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureBackgroundView()
        layoutUI()
        configureActionButton()
        configureStackView()
    }
    
    
    private func configureBackgroundView() {
        view.layer.cornerRadius = 18
        view.backgroundColor = .secondarySystemBackground
        
    }
    
    init(user: User) {
        super.init(nibName: nil, bundle: nil)
        self.user = user
        
    }
    
    
    private func configureStackView() {
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.addArrangedSubview(itemInfoViewOne)
        stackView.addArrangedSubview(itemInfoViewTwo)
    }
    
    private func configureActionButton() {
        actionButton.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
    }
    
    @objc func actionButtonTapped() { }
    
    private func layoutUI() {
        view.addSubviews(stackView,actionButton)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        let padding: CGFloat = 20
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            stackView.heightAnchor.constraint(equalToConstant: 50),
            
            actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
