//
//  LoginViewController.swift
//  hangMan495
//
//  Created by Joseph Molina on 12/21/16.
//  Copyright © 2016 Joseph Molina. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {


    @IBOutlet weak var emailLoginTextField: UITextField!

    @IBOutlet weak var passwordLoginTextField: UITextField!
    
    @IBAction func loginAction(_ sender: Any) {
        if self.emailLoginTextField.text! == "" || self.passwordLoginTextField.text! == ""{
            
            let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
        else{
    
            FIRAuth.auth()?.signIn(withEmail: self.emailLoginTextField.text!, password: self.passwordLoginTextField.text!) { (user, error) in
    
    if error == nil {
    
    //Print into the console if successfully logged in
    print("You have successfully logged in")
    
    //Go to the HomeViewController if the login is sucessful
    let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainScreen")
    self.present(vc!, animated: true, completion: nil)
    
    } else {
    
    //Tells the user that there is an error and then gets firebase to tell them the error
    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
    
    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
    alertController.addAction(defaultAction)
    
    self.present(alertController, animated: true, completion: nil)
    }
}
}
}
}
