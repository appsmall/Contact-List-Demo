//
//  ViewController.swift
//  ContactListAppDemo
//
//  Created by Shashank Panwar on 16/07/18.
//  Copyright © 2018 Kayosys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showContactPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "contactVC", sender: nil)
    }
    

    
}

