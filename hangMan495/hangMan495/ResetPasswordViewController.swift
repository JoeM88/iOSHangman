//
//  ResetPasswordViewController.swift
//  hangMan495
//
//  Created by Joseph Molina on 12/25/16.
//  Copyright © 2016 Joseph Molina. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ResetPasswordViewController: UIViewController {
   
    
    @IBOutlet weak var resetPasswordTextField: UITextField!
    @IBAction func resetPasswordAction(_ sender: Any) {
        
        if self.resetPasswordTextField.text == ""{
            let alertController = UIAlertController(title: "Oops!", message: "Please enter an email.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
        }
        else{
            FIRAuth.auth()?.sendPasswordReset(withEmail: self.resetPasswordTextField.text!, completion: { (error) in
                
                var title = ""
                var message = ""
                
                if error != nil {
                    title = "Error!"
                    message = (error?.localizedDescription)!
                } else {
                    title = "Success!"
                    message = "Password reset email sent."
                    self.resetPasswordTextField.text = ""
                }
                
                let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                self.present(alertController, animated: true, completion: nil)
            })
        }
    }
        


}
