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
    
    var LIVES = 10

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
        

        CAMOUFLAGE_WORD = brain.revealLetter(word: WORD, secret_word: CAMOUFLAGE_WORD, letter: (letter:character[character.startIndex]))
        
        display.text = brain.spaceWordOut(word: CAMOUFLAGE_WORD);
        
      
        

    }
    
  
    @IBOutlet weak var hangManImage: UIImageView!
    
    func nextHangManImage(letterFound: Bool){
        
        if letterFound == false{
            
            LIVES -= 1
            
            if LIVES == 9{
                hangManImage.image =  UIImage(named:"2");
            }
            else if LIVES == 8{
                hangManImage.image =  UIImage(named:"3");
            }
            else if LIVES == 7{
                hangManImage.image =  UIImage(named:"4");
            }
            else if LIVES == 6{
                hangManImage.image =  UIImage(named:"5");
            }
            else if LIVES == 5{
                hangManImage.image =  UIImage(named:"6");
            }
            else if LIVES == 4{
                hangManImage.image =  UIImage(named:"7");
            }
            else if LIVES == 3{
                hangManImage.image =  UIImage(named:"8");
            }
            else if LIVES == 2{
                hangManImage.image =  UIImage(named:"9");
            }
            else if LIVES == 1{
                hangManImage.image =  UIImage(named:"10");
            }
            else if LIVES == 0{
                hangManImage.image =  UIImage(named:"11");
            }
        }
        
    }
    
    

    
    @IBAction func changeLetterColor(_ sender: UIButton) {
        
        var letterClicked = (sender.currentTitle!).lowercased()
        var character = [Character](letterClicked.characters)
        let letter = String(character[character.startIndex])
        
        let letterFound = brain.checkLetter(letter:character[character.startIndex])
       
        nextHangManImage(letterFound: letterFound)
        
        if letter == "a"{//saturation and tint for color all lowered on actual image not here
            if letterFound{
                sender.setImage(UIImage(named: "Image-27"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "a_red"), for: .normal)
            }
        }
        else if letter == "b"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-28"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "b_red"), for: .normal)
            }
        }
        else if letter == "c"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-29"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "c_red"), for: .normal)
            }
        }
        else if letter == "d"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-30"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "d_red"), for: .normal)
            }
        }
        else if letter == "e"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-31"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "e_red"), for: .normal)
            }
        }
        else if letter == "f"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-32"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "f_red"), for: .normal)
            }
        }
        else if letter == "g"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-33"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "g_red"), for: .normal)
            }
        }
        else if letter == "h"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-34"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "h_red"), for: .normal)
            }
        }
        else if letter == "i"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-35"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "i_red"), for: .normal)
            }
        }
        else if letter == "j"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-36"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "j_red"), for: .normal)
            }
        }
        else if letter == "k"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-37"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "k_red"), for: .normal)
            }
        }
        else if letter == "l"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-38"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "l_red"), for: .normal)
            }
        }
        else if letter == "m"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-39"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "m_red"), for: .normal)
            }
        }
        else if letter == "n"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-40"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "n_red"), for: .normal)
            }
        }
        else if letter == "o"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-41"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "o_red"), for: .normal)
            }
        }
        else if letter == "p"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-42"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "p_red"), for: .normal)
            }
        }
        else if letter == "q"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-43"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "q_red"), for: .normal)
            }
        }
        else if letter == "r"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-44"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "r_red"), for: .normal)
            }
        }
        else if letter == "s"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-45"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "s_red"), for: .normal)
            }
        }
        else if letter == "t"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-46"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "t_red"), for: .normal)
            }
        }
        else if letter == "u"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-47"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "u_red"), for: .normal)
            }
        }
        else if letter == "v"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-52"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "v_red"), for: .normal)
            }
        }
        else if letter == "w"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-48"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "w_red"), for: .normal)
            }
        }
        else if letter == "x"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-49"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "x_red"), for: .normal)
            }
        }
        else if letter == "y"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-50"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "y_red"), for: .normal)
            }
        }
        else if letter == "z"{
            if letterFound{
                sender.setImage(UIImage(named: "Image-51"), for: .normal)
            }
            else{
                sender.setImage(UIImage(named: "z_red"), for: .normal)
            }
        }
        print(letter)
        
    }
 

}
