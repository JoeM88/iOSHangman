//
//  ViewController.swift
//  hangMan495
//
//  Created by Joseph Molina on 10/16/16.
//  Copyright © 2016 Joseph Molina. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    
    @IBAction func logoutAction(_ sender: Any) {
        if FIRAuth.auth()?.currentUser != nil {
            do {
                try FIRAuth.auth()?.signOut()
                 let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginScreen")
                present(vc!, animated: true, completion: nil)
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }
    
}

