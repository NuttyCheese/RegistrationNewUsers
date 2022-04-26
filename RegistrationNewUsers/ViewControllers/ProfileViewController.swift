//
//  ProfileViewController.swift
//  RegistrationNewUsers
//
//  Created by Борис Павлов on 25.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var photoUser: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var surname: UILabel!
    
    var nameProfile: String = ""
    var surnameProfile: String = ""
    var photoName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text = nameProfile
        surname.text = surnameProfile
        
        photoUser.image = UIImage(named: photoName)
    }
    

}
