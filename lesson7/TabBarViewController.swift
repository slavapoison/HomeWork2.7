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
        
    }
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let sectionVC = tabBarController.viewControllers?.last as! ContactsGroupeTableViewController
        let navigationVC = tabBarController.viewControllers?.first as! UINavigationController
        let listVC = navigationVC.topViewController as! ContactsViewController
        sectionVC.contacts = contacts
        listVC.contacts = contacts
    }

}
