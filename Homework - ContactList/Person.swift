//
//  Person.swift
//  Homework - ContactList
//
//  Created by Виталий Сабин on 19.04.2023.
//


struct Person: Hashable {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        for _ in 1...DataStore().names.count {
            let person = Person(
                name: DataStore().names.randomElement() ?? "",
                surname: DataStore().surnames.randomElement() ?? "",
                phoneNumber: DataStore().phoneNumbers.randomElement() ?? "",
                email: DataStore().emails.randomElement() ?? "")
            
            
            persons.append(person)
        }
        return persons
    }
}
