//
//  TabBarViewController.swift
//  lesson7
//
//  Created by Вячеслав Шангин on 18.02.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var contacts = DataManager().getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let listVC = self.viewControllers?.first as! ContactsViewController
        listVC.contacts = contacts
        
        let sectionsVC = self.viewControllers?.last as! ContactsGroupeTableViewController
        sectionsVC.contacts = contacts
    }
}
