//
//  ViewController.swift
//  login_app
//
//  Created by mac on 19.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    private let user = "user"
    private let password = "password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInPressed() {
        guard userNameTF.text == user, userPasswordTF.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login or password",
                textField: userPasswordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: self)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Ooops!", message: "Your name is \(user) 😉")
        : showAlert(title: "Ooops!", message: "Your password is \(password) 😉")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

