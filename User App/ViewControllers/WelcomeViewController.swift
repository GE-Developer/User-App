//
//  WelcomeViewController.swift
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
    var name: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exitButton.layer.cornerRadius = 10
        
        if let name = self.name {
            greetUserLabel.text = String("Welcome, \(name)!")
            
        }
    }
    
}
