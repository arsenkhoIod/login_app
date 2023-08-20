//
//  User.swift
//  login_app
//
//  Created by mac on 20.08.2023.
//

import UIKit

struct User {
    let login: String
    let password: String
    let humanInfo: Human
    
    static func getUserInfo() -> User {
        User(
            login: "user",
            password: "password",
            humanInfo: Human.getHumanInfo()
        )
    }
}
struct Human {
    let name: String
    let surname: String
    let age: String
    let shortInformationAboutUser: String
    let photo: String
    let education: Education
    
    static func getHumanInfo() -> Human {
        Human(
            name: "Arseny",
            surname: "Kholod",
            age: "20",
            shortInformationAboutUser: "Born in the city of Vidnoye.  For a long time I lived in Pakistan and Austria. Now I am studying at BMSTU in the specialty cyber security. I am fond of sports and playing the piano. I am currently studying ios development",
            photo: "profile_photo",
            education: Education.getEducationInfo()
        )
    }
}

struct Education {
    let nameOfSpec: String
    let university: University
    
    static func getEducationInfo() -> Education {
        Education(
            nameOfSpec: "Cyber Security",
            university: .bmstu
        )
    }
    
}

enum University: String{
    case mgu = "MGU"
    case bmstu = "BMSTU"
    case mai = "MAI"
}
