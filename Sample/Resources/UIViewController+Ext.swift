//
//  UIViewController+Ext.swift
//  Sample
//
//  Created by Juliana Chahoud on 30/07/18.
//  Copyright © 2018 example. All rights reserved.
//

import UIKit

extension UIViewController {
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Login", message: message, preferredStyle: .alert)
        alert.accessibilityLabel = "message"
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true)
    }
}

