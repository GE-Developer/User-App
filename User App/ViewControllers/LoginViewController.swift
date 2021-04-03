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
    private let userName = "User"
    private let password = "password"
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.login = userNameTF.text
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
        if userNameTF.text != userName || passwordTF.text != password {
            showAlert(with: "Ooops!", and: "Please, enter correct Login and Password")
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Your login is:", and: userName)
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Your password is:", and: password)
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
