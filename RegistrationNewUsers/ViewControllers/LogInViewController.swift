//
//  ViewController.swift
//  RegistrationNewUsers
//
//  Created by Борис Павлов on 22.04.2022.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: - IB Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    
    //MARK: - Public properties
    let user = Users(
        login: "catBoris",
        password: "132",
        profils: Profile.init(
            name: "Boris",
            surname: "Cat",
            imageName: "birman-cat",
            info: "Равным образом новая модель организационной деятельности напрямую зависит от системы обучения кадров, соответствующей насущным потребностям. Разнообразный и богатый опыт повышение уровня..."
        )
    )
    
    //MARK: - Private properties
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsItems()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        guard let vcList = tabBarController.viewControllers else { return }
        
        for viewController in vcList {
            if let profileViewController = viewController as? ProfileViewController {
                profileViewController.nameProfile = user.profils.name
                profileViewController.surnameProfile = user.profils.surname
                profileViewController.photoName = user.profils.imageName
            } else if let navigationViewController = viewController as? UINavigationController {
                if let infoViewController = navigationViewController.topViewController as? InfoViewController {
                     infoViewController.infoText = user.profils.info
                 }
            }
            
            
//            else if let infoViewController = viewController as? InfoViewController {
//                infoViewController.infoText = user.profils.info
//            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if userNameTextField.text != user.login || passwordTextfield.text != user.password {
            helperNotification(with: "Warning!", message: "Login or password incorrect!")
            return false
        }
        return true
    }

    //MARK: - IB Actions
    @IBAction func helpInLogin() {
        helperNotification(with: "Do not worry, here...", message: "login: \(user.login) \n password: \(user.password)")
    }
    
    @IBAction func unwindForLogOut(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextfield.text = ""
    }
    
    @IBAction func tapView(_ sender: Any) {
        userNameTextField.resignFirstResponder()
        passwordTextfield.resignFirstResponder()
    }
    
    //MARK: - Public Methods: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField || textField == passwordTextfield {
            self.userNameTextField.becomeFirstResponder()
            self.passwordTextfield.becomeFirstResponder()
            
        }
        return true
    }
    
    //MARK: - Private Methods
    private func settingsItems() {
        userNameTextField.delegate = self
        passwordTextfield.delegate = self
        userNameTextField.returnKeyType = UIReturnKeyType.next
        passwordTextfield.returnKeyType = UIReturnKeyType.done
        logInButton.layer.cornerRadius = 10
        helpButton.layer.cornerRadius = 10
    }
}

//MARK: - Alert Controller
extension LogInViewController {
    func helperNotification(with title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertActionOne = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTextfield.text = ""
        }
        alertController.addAction(alertActionOne)
        present(alertController, animated: true)
    }
}
