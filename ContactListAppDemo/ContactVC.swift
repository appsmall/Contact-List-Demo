//
//  ContactVC.swift
//  ContactListAppDemo
//
//  Created by Shashank Panwar on 16/07/18.
//  Copyright © 2018 Kayosys. All rights reserved.
//

import UIKit
import ContactsUI

class ContactVC: UIViewController, CNContactPickerDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let cnPicker = CNContactPickerViewController()
        cnPicker.delegate = self
        self.present(cnPicker, animated: true, completion: nil)
    }

    func contactPicker(_ picker: CNContactPickerViewController, didSelect contacts: [CNContact]) {
        contacts.forEach { contact in
            for number in contact.phoneNumbers {
                let phoneNumber = number.value
                print("number is = \(phoneNumber)")
            }
        }
    }
    
    func contactPickerDidCancel(_ picker: CNContactPickerViewController) {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
