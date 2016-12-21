//
//  HangmanBrain.swift
//  hangMan495
//
//  Created by Jose Cortez on 12/19/16.
//  Copyright © 2016 Joseph Molina. All rights reserved.
//

import Foundation

class HangmanBrain {
    
    
    var current_word : String? = nil
    var discovered_words : [Character] = [];
    func generateWord() -> String {
        
        if let wordsFilePath = Bundle.main.path(forResource: "words", ofType: nil) {
            do {
                let wordsString = try String(contentsOfFile: wordsFilePath)
                
                let wordLines = wordsString.components(separatedBy: "\n")
                
                let randomLine = wordLines[Int(arc4random_uniform(UInt32(wordLines.count)))]
                current_word = randomLine
                print(randomLine)
                
            } catch { // contentsOfFile throws an error
                print("Error: \(error)")
            }
        }
        
        return "Test"
    }
    
    
    func checkLetter(letter: Character) -> Bool
    {
        if(discovered_words.contains(letter))
        {
            return false;
        }
        if(current_word!.contains(String(letter)))
        {
            
            discovered_words.append(letter)
            return true;
        }
        return false;
    }
    
    
    
    
}
var brain : HangmanBrain = HangmanBrain()

let test = brain.generateWord()
