//
//  ContactsViewController.swift
//  lesson7
//
//  Created by Вячеслав Шангин on 17.02.2021.
//

import UIKit

class ContactsViewController: UITableViewController {

    var contacts: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 40
        navigationItem.title = "List"
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contacts[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(contact.fullName)"
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as! DetailContactViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.person = contacts[indexPath.row]
    }
}
