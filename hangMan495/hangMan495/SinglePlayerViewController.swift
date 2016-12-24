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
    var CAMOUFLAGE_WORD = ""

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
        
        CAMOUFLAGE_WORD = brain.camouflage(word: WORD)
        display.text = brain.spaceWordOut(word: CAMOUFLAGE_WORD)
        
        print(WORD)
        
        
    }
    @IBAction func letterClicked(_ sender: UIButton) {
        
        //levelPasssed()
        
        var letterClicked = (sender.currentTitle!).lowercased()
       
        var character = [Character](letterClicked.characters)
    
        let letterFound = brain.checkLetter(letter:character[character.startIndex])
        
        
        CAMOUFLAGE_WORD = brain.revealLetter(word: WORD, secret_word: CAMOUFLAGE_WORD, letter: (letter:character[character.startIndex]))
        
        display.text = brain.spaceWordOut(word: CAMOUFLAGE_WORD);
        
      
        print(letterFound)
    
    }

}
