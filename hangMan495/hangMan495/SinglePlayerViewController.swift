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
        
      
       // print(letterFound)
    }
    
    

    
    @IBAction func changeLetterColor(_ sender: UIButton) {
        
        var letterClicked = (sender.currentTitle!).lowercased()
        var character = [Character](letterClicked.characters)
        let letter = character[character.startIndex]
        
        if letter == "a"{//saturation and tint for color all lowered on actual image not here
             sender.setImage(UIImage(named: "Image-27"), for: .normal)
        }
        else if letter == "b"{
            sender.setImage(UIImage(named: "Image-28"), for: .normal)
        }
        else if letter == "c"{
            sender.setImage(UIImage(named: "Image-29"), for: .normal)
        }
        else if letter == "d"{
            sender.setImage(UIImage(named: "Image-30"), for: .normal)
        }
        else if letter == "e"{
            sender.setImage(UIImage(named: "Image-31"), for: .normal)
        }
        else if letter == "f"{
            sender.setImage(UIImage(named: "Image-32"), for: .normal)
        }
        else if letter == "g"{
            sender.setImage(UIImage(named: "Image-33"), for: .normal)
        }
        else if letter == "h"{
            sender.setImage(UIImage(named: "Image-34"), for: .normal)
        }
        else if letter == "i"{
            sender.setImage(UIImage(named: "Image-35"), for: .normal)
        }
        else if letter == "j"{
            sender.setImage(UIImage(named: "Image-36"), for: .normal)
        }
        else if letter == "k"{
            sender.setImage(UIImage(named: "Image-37"), for: .normal)
        }
        else if letter == "l"{
            sender.setImage(UIImage(named: "Image-38"), for: .normal)
        }
        else if letter == "m"{
            sender.setImage(UIImage(named: "Image-39"), for: .normal)
        }
        else if letter == "n"{
            sender.setImage(UIImage(named: "Image-40"), for: .normal)
        }
        else if letter == "o"{
            sender.setImage(UIImage(named: "Image-41"), for: .normal)
        }
        else if letter == "p"{
            sender.setImage(UIImage(named: "Image-42"), for: .normal)
        }
        else if letter == "q"{
            sender.setImage(UIImage(named: "Image-43"), for: .normal)
        }
        else if letter == "r"{
            sender.setImage(UIImage(named: "Image-44"), for: .normal)
        }
        else if letter == "s"{
            sender.setImage(UIImage(named: "Image-45"), for: .normal)
        }
        else if letter == "t"{
            sender.setImage(UIImage(named: "Image-46"), for: .normal)
        }
        else if letter == "u"{
            sender.setImage(UIImage(named: "Image-47"), for: .normal)
        }
        else if letter == "v"{
            sender.setImage(UIImage(named: "Image-52"), for: .normal)
        }
        else if letter == "w"{
            sender.setImage(UIImage(named: "Image-48"), for: .normal)
        }
        else if letter == "x"{
            sender.setImage(UIImage(named: "Image-49"), for: .normal)
        }
        else if letter == "y"{
            sender.setImage(UIImage(named: "Image-50"), for: .normal)
        }
        else if letter == "z"{
            sender.setImage(UIImage(named: "Image-51"), for: .normal)
        }
        print(letter)
        
    }
 

}
