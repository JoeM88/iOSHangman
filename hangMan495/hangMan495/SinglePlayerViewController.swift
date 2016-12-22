//
//  SinglePlayerViewController.swift
//  hangMan495
//
//  Created by Salvador Ramirez on 12/20/16.
//  Copyright © 2016 Joseph Molina. All rights reserved.
//

import UIKit

class SinglePlayerViewController: UIViewController {
    
    
    var brain = HangmanBrain();
    
    var WORD = "";

    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        levelPasssed()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func levelPasssed() {
        
        WORD = brain.generateWord()
        // print(word)
        
        display.text = brain.camouflage(word: WORD);
        
        print(WORD)
        
        
    }
    @IBAction func letterClicked(_ sender: UIButton) {
        
        levelPasssed()
    
    }

}
