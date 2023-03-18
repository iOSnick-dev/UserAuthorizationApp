//
//  User.swift
//  UserAuthorizationApp
//
//  Created by Дмитрий Бородулькин on 18.03.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}


struct Person {
    let name: String
    let surname: String
    let image: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Alexey", surname: "Efimov", image: "SwiftImage")
    }
}
