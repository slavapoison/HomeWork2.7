//
//  ContactsGroupeTableViewController.swift
//  lesson7
//
//  Created by Вячеслав Шангин on 17.02.2021.
//

import UIKit

class ContactsGroupeTableViewController: UITableViewController {
    
    var contacts = DataManager().getData()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 35
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact =  contacts[indexPath.section]
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 1 {
            content.text = "\(contact.email)"
        } else if indexPath.row == 0 {
            content.text = "\(contact.phone)"
        }
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView,titleForHeaderInSection section: Int) -> String? {
        return contacts[section].fullName
    }
 
}
