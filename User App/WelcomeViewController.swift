//
//  InterfaceViewController.swift
//  User App
//
//  Created by Mikhail Bukhrashvili on 31.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - IB Outlets
    
    @IBOutlet var greetUserLabel: UILabel!
    @IBOutlet var exitButton: UIButton!
    
    // MARK: - Public properties
    var login: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exitButton.layer.cornerRadius = 10
        
        if let login = self.login {
            greetUserLabel.text = String("Welcome, \(login)!")
        }
    }
    
}
