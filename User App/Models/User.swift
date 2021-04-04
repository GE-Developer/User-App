//
//  UserInfo.swift
//  User App
//
//  Created by Mikhail Bukhrashvili on 03.04.2021.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "password",
            person: Person(name: "Mikhail",
                           age: "25",
                           hobbyOne: "Snowboarding",
                           hobbyTwo: "In love with hookah",
                           dream: "Want to climb all 7 Peaks",
                           job: "Want to become an IOS-Developer",
                           tel: "+7(909)999-32-79",
                           mail: "on-line-misha@mail.ru",
                           photo1: "",
                           photo2: "",
                           photo3: "",
                           photo4: "",
                           photo5: "")
            
        )
    }
}

struct Person {
    let name: String
    let age: String
    let hobbyOne: String
    let hobbyTwo: String
    let dream: String
    let job: String
    let tel: String
    let mail: String
    let photo1: String
    let photo2: String
    let photo3: String
    let photo4: String
    let photo5: String
}
