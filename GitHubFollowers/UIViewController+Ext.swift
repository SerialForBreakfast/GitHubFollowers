//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Joseph McCraw on 1/2/20.
//  Copyright © 2020 Joseph McCraw. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
                        print("no text entered")
                        let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
                        present(alertVC, animated: true, completion: nil)
        }
    }
}
