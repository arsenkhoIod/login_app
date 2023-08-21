//
//  UserInfoViewController.swift
//  login_app
//
//  Created by mac on 20.08.2023.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var userPhotoIV: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        userPhotoIV.image = UIImage(named: user.humanInfo.photo)
        nameLabel.text = user.humanInfo.name
        surnameLabel.text = user.humanInfo.surname
        ageLabel.text = user.humanInfo.age
        educationLabel.text = user.humanInfo.education.university.rawValue
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreUserInfoVC = segue.destination as? MoreUserInfoViewController else {return}
        moreUserInfoVC.user = user
    }
    
}
