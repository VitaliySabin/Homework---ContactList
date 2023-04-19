//
//  ContactsTableViewController.swift
//  Homework - ContactList
//
//  Created by Виталий Сабин on 19.04.2023.
//

import UIKit

final class ContactsTableViewController: UITableViewController {
    private var persons = Person.getPerson()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        let detailsVC = segue.destination as? DetailsViewController
        detailsVC?.person = person
    }
}

// MARK: - UITableViewDataSource
extension ContactsTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullname
        cell.contentConfiguration = content
        return cell
    }
}
