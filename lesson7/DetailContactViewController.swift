//
//  DetailContactViewController.swift
//  lesson7
//
//  Created by Вячеслав Шангин on 17.02.2021.
//

import UIKit

class DetailContactViewController: UIViewController {

    var person: Person!
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = person.phone
        emailLabel.text = person.email
        navigationItem.title = person.fullName
    }
}
