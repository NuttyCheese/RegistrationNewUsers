//
//  ViewController.swift
//  RegistrationNewUsers
//
//  Created by Борис Павлов on 22.04.2022.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.delegate = self
        passwordTextfield.delegate = self
        
        passwordTextfield.returnKeyType = UIReturnKeyType.done
        
        
    }

    @IBAction func registrationNewUser() {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomUserVC = segue.destination as? WelcomUserViewController else { return }
        
        welcomUserVC.welcom = userNameTextField.text
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if userNameTextField.text == "" || userNameTextField.text != "User" {
            helperNotification(with: "Warning!", message: "Login or password incorrect!")
            return false
        }
        if passwordTextfield.text == "" || passwordTextfield.text != "123" {
            helperNotification(with: "Warning!", message: "Login or password incorrect!")
            return false
        }
        return true
    }
    
    @IBAction func helpInLogin() {
        helperNotification(with: "Do not worry, here...", message: "login: User \n password: 123")
    }
    
    @IBAction func unwindForLogOut(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextfield.text = ""
    }
    
    //MARK: - UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField || textField == passwordTextfield {
            self.userNameTextField.resignFirstResponder()
            self.passwordTextfield.becomeFirstResponder()
            
        }
        return true
    }
}

extension LogInViewController {
    func helperNotification(with title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertActionOne = UIAlertAction(title: "Ok", style: .default) { _ in
            self.userNameTextField.text = ""
            self.passwordTextfield.text = ""
        }
        alertController.addAction(alertActionOne)
        present(alertController, animated: true)
    }
    
    
}

