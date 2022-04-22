//
//  WelcomUserViewController.swift
//  RegistrationNewUsers
//
//  Created by Борис Павлов on 22.04.2022.
//

import UIKit

class WelcomUserViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var welcomLabel: UILabel!
    
    //MARK: - Properties
    var welcom: String!
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomLabel.text = "Welcom, \(welcom ?? "")!"
        settingsItems()
    }
    
    //MARK: - Methods
    private func settingsItems() {
        logOutButton.setTitle("Log out", for: .normal)
    }
}
