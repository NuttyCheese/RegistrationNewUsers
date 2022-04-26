//
//  Users.swift
//  RegistrationNewUsers
//
//  Created by Борис Павлов on 25.04.2022.
//

struct Users {
    
    let login: String
    let password: String
    let profils: Profile
    
    static func verificationUsers() -> Users {
        Users(
            login: "",
            password: "",
            profils: .init(
                name: "",
                surname: "",
                imageName: "",
                info: ""
            )
        )
    }
}

struct Profile {
    let name: String
    let surname: String
    let imageName: String
    let info: String
}

//MARK: - IB Outlets

//MARK: - Public Properties

//MARK: - Private Properties

//MARK: - Initializers

//MARK: - Override Methods

//MARK: - IB Actions

//MARK: - Public Methods

//MARK: - Private Methods
