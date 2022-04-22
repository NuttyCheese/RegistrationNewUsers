//
//  WelcomUserViewController.swift
//  RegistrationNewUsers
//
//  Created by Борис Павлов on 22.04.2022.
//

import UIKit

class WelcomUserViewController: UIViewController {

    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var welcomLabel: UILabel!
    
    var welcom: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomLabel.text = "Welcom, \(welcom ?? "")!"
        
        settingsItems()
    }
    
    private func settingsItems() {
        logOutButton.setTitle("Log out", for: .normal)
    }
}
