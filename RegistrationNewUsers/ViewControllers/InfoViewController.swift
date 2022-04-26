//
//  InfoViewController.swift
//  RegistrationNewUsers
//
//  Created by Борис Павлов on 25.04.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var someTextaboutMeLabel: UILabel!
    
    var infoText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        someTextaboutMeLabel.text = infoText

    }
   
}
