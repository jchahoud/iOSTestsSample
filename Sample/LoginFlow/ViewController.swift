//
//  ViewController.swift
//  Sample
//
//  Created by Juliana Chahoud on 30/07/18.
//  Copyright © 2018 example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func login() {
        let userLoggedIn = Request().login(email: emailTextField.text!, password: passwordTextField.text!)

        if (userLoggedIn) {
            showAlert(message: "Usuário logado!")
        } else {
            showAlert(message: "Usuário inválido!")
        }
    }

}

