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
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    // MARK: - IBActions
    @IBAction func logInPressed() {
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    

}

