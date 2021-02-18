//
//  DataManager.swift
//  lesson7
//
//  Created by Вячеслав Шангин on 16.02.2021.
//

class DataManager {
    
    var names = ["John", "Carl", "Edward", "Brad", "Tim", "Johm"]
    var lastNames = ["Norton", "Pitt", "Di Caprio", "Cook", "Edwardson"]
    var phones = ["8-879-883-8336", "7-77-883-877336", "9-999-883-8996", "8-879-883-8888", "8-839-883-3333"]
    var emails = ["ttt@tutu.ru", "sss@mail.ru", "ksskka@ya.ru", "ksskkasasda@ya.ru", "qwqeqrrty@ya.ru"]
    
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
