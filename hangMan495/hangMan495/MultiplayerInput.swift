//
//  MultiplayerInput.swift
//  hangMan495
//
//  Created by Jose Cortez on 12/26/16.
//  Copyright © 2016 Joseph Molina. All rights reserved.
//

import UIKit

class MultiplayerInput: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "SendInput")
        {
           var word = input
           let destination = segue.destination as! SinglePlayerViewController
           destination. = self.word
        }
    }*/
    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func submit(_ sender: Any) {
        if input == nil{
            
        }
        else{
            //prepare(for: <#T##UIStoryboardSegue#>, sender: <#T##AnyObject?#>)
        }
        
    }
    

}
