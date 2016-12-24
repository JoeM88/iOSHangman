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
    var discovered_words : [Character] = []
    var guessed_letters : [Character] = []
    
    
    //Generate and return a random word
    func generateWord() -> String {
        
        if let wordsFilePath = Bundle.main.path(forResource: "words", ofType: nil) {
            do {
                let wordsString = try String(contentsOfFile: wordsFilePath)
                
                let wordLines = wordsString.components(separatedBy: "\n")
                
                let randomLine = wordLines[Int(arc4random_uniform(UInt32(wordLines.count)))]
                current_word = randomLine
                //print(randomLine)
                return randomLine
                
            } catch { // contentsOfFile throws an error
                print("Error: \(error)")
            }
        }
        
        return ""
    }
    
    //Returns false is the letter has been guessed already or if the letter is not in the word
    func checkLetter(letter: Character) -> Bool
    {
        if(discovered_words.contains(letter))
        {
            return false;
        }
        guessed_letters.append(letter)
        if(current_word!.contains(String(letter)))
        {
            
            discovered_words.append(letter)
            return true;
        }
        return false;
    }
    
    
    //Getters and Setters
    
    func getDiscoveredWord() -> [Character]
    {
        return discovered_words
    }
    
    func getGuessedLetters() -> [Character]
    {
        return guessed_letters
    }
    
    
    //camouflages the word
    
    func camouflage(word: String) -> String{
        
        print (word.characters.count)
        
        var counter = 0;
        var secret_word = "";
        
        while counter < word.characters.count{
            
            counter += 1;
            secret_word += "_"
        }
        return secret_word
    }
    
    
    //Places a space between each character in a string
    func spaceWordOut(word: String) -> String{
    
        var temp_word = "";
        
        print(word.characters.count)
        
        for index in 0...((word.characters.count)-1){
        
            let word_idx = word.index(word.startIndex, offsetBy: index)
        
            temp_word += String(word[word_idx]) + " "
        }
        return temp_word;
    }
    
    
    //Displays the words that the user guesses correctly
    func revealLetter(word: String, secret_word: String, letter: Character ) -> String{
    
        var temp_secret_word = ""

        for i in 0...(word.characters.count - 1){
        
            let idx = word.index(word.startIndex, offsetBy: i)
            
            if word[idx] == letter{
                
                temp_secret_word += String(letter)
            }
            else{
                
                if(secret_word[idx] != "_")
                {
                    temp_secret_word += String(secret_word[idx])
                }
                else{
                     temp_secret_word += "_"
                }
            }
      }
    return temp_secret_word
    
    }
    
}

var brain : HangmanBrain = HangmanBrain()

let test = brain.generateWord()




