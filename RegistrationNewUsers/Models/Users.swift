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
            login: "cat",
            password: "132",
            profils: .init(
                name: "Boris",
                surname: "Pavlov",
                imageName: "IMG_1130.JPG",
                info: "Привет! Мне 27 лет, на текущий 27 день апреля 2022 года. Скоро будет 28😁 Я родился в Иркутске, переехал в Санкт-Петербург, чтоб учится и развиваться в сфере программирования. Которому я начал обучаться еще в Иркутске. Начинал с плюсов, потом перешел на шарп, ничего не нравилось, и дошел до Swift(а) и тогда еще Objectiv-C, остановился на них. Свифт на фоне Обжектив молодой и интересный, хочется его покорить. Собственно чем я и занимаюсь. Пока что на этом всё."
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
