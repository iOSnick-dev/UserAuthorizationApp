//
//  WelcomeViewController.swift
//  UserAuthorizationApp
//
//  Created by Дмитрий Бородулькин on 17.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)!"
   
    }
    



}
