//
//  DataManager.swift
//  lesson7
//
//  Created by Вячеслав Шангин on 16.02.2021.
//

class DataManager {
    
    var names = ["John", "Carl", "Edward"]
    var lastNames = ["Norton", "Pitt", "Di Caprio"]
    var phones = ["88798838833", "33234223", "55364546"]
    var emails = ["ttt@tutu.ru", "sss@mail.ru", "ksskka@ya.ru"]
    
    func getData() -> [Person] {
        
        var persons: [Person] = []
        
        for _ in 1...names.count {
            let person = Person(name: names.randomElement() ?? "",
                              lastName: lastNames.randomElement() ?? "",
                              email: emails.randomElement() ?? "",
                              phone: phones.randomElement() ?? "")
            persons.append(person)
            
            names.removeAll(where: { $0 == person.name })
            lastNames.removeAll(where: { $0 == person.lastName })
            phones.removeAll(where: { $0 == person.phone })
            emails.removeAll(where: { $0 == person.email })
        }
        return persons
    }
    
}
