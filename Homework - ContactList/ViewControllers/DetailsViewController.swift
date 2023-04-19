//
//  ViewController.swift
//  Homework - ContactList
//
//  Created by Виталий Сабин on 19.04.2023.
//

import UIKit

final class DetailsViewController: UIViewController {
    var person: Person!

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullname
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
}
