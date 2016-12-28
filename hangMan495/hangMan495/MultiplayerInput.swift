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
    
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        print("before if statements")
        if (segue.identifier == "SendInput")
        {
            print("in if statement")
           let destination = segue.destination as! SinglePlayerViewController
            print(input.text! as String)
            let playerTwoWord = input.text!
           destination.WORD = playerTwoWord
        }
    }
    
    @IBOutlet weak var input: UITextField!
    //var playerTwoWord = input.text! as String
    
    @IBAction func submit(_ sender: Any) {
        if input == nil{
            
        }
        else{
            //print(input.text! as String + "*******")
            
                DispatchQueue.main.async {  //this is where we do an async call
                    print(self.input.text! as String + "*******")
                    self.performSegue(withIdentifier: "SendInput", sender: self)
                }
            
        }
        
    }
    

}
