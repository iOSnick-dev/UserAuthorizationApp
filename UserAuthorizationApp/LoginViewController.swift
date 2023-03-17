//
//  ViewController.swift
//  UserAuthorizationApp
//
//  Created by Дмитрий Бородулькин on 14.03.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private properties
    private let user = "User"
    private let password = "Password"
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.user = user
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    // MARK: - IBActions
    @IBAction func logInPressed() {
        if userNameTextField.text != user || passwordTextField.text != password {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
        }
        
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(title: "Opps!", message: "Your name is \(user) 😉")
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Opps!", message: "Your password is \(password) 😉")
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
}

// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.userNameTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
