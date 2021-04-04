//
//  ContactsViewController.swift
//  User App
//
//  Created by Mikhail Bukhrashvili on 04.04.2021.
//

import UIKit

class ContactsViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var telLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    
    // MARK: - Public Properties
    var tel: String!
    var mail: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tel = tel,
           let mail = mail {
            telLabel.text = "Tel.: \(tel)"
            mailLabel.text = "Mail: \(mail)"
        }
    }

}
