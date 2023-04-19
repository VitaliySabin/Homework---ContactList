//
//  Person.swift
//  Homework - ContactList
//
//  Created by Виталий Сабин on 19.04.2023.
//

import Foundation

struct Person: Hashable {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons: Set<Person> = []
        
        for _ in 1...names.count {
            let person = Person(
                name: names.randomElement() ?? "Ivan",
                surname: surnames.randomElement() ?? "Ivanov",
                phoneNumber: phoneNumbers.randomElement() ?? "00000",
                email: emails.randomElement() ?? "xxxxx@mail.com"
            )
            persons.insert(person)
        }
        return Array(persons)
    }
    
}
