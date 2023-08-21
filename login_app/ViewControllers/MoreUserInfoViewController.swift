//
//  MoreUserInfoViewController.swift
//  login_app
//
//  Created by mac on 20.08.2023.
//

import UIKit

class MoreUserInfoViewController: UIViewController {
    
    @IBOutlet var userInfoTV: UITextView!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        userInfoTV.text = user.humanInfo.shortInformationAboutUser
    }
    

    
}
