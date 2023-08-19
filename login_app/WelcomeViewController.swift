//
//  WelcomeViewController.swift
//  login_app
//
//  Created by mac on 19.08.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)"
    }
}
