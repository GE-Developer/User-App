//
//  LoginViewController.swift
//  User App
//
//  Created by Mikhail Bukhrashvili on 31.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var continueButton: UIButton!
    
    // MARK: - Private Properties
    private let user = User.getUser()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        
        guard let viewControllers = tabBarController.viewControllers else { return }
        //...
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.login = user.person.name
            } else if let aboutMe = viewController as? AboutMeViewController {
                aboutMe.age = user.person.age
                aboutMe.hobbyOne = user.person.hobbyOne
                aboutMe.hobbyTwo = user.person.hobbyTwo
                aboutMe.dream = user.person.dream
                aboutMe.job = user.person.job
                aboutMe.photoOne = user.person.photoOne
            } else if let contacts = viewController as? ContactsViewController {
                contacts.tel = user.person.tel
                contacts.mail = user.person.mail
            }
        }
        //...
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    // MARK: - IB Actions
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = nil
        passwordTF.text = nil
    }
    
    @IBAction func continueButtonPressed() {
        if userNameTF.text != user.login || passwordTF.text != user.password {
            showAlert(with: "Ooops!", and: "Please, enter correct Login and Password")
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Your login is:", and: user.login)
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Your password is:", and: user.password)
    }
    
}

// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOK = UIAlertAction(title: "OK", style:.default) { _ in
            self.passwordTF.text = ""
        }
        
        alert.addAction(alertOK)
        present(alert, animated: true)
    }
}
