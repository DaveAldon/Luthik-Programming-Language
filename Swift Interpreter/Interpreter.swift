//
//  Interpreter.swift
//  
//
//  Created by David Crawford on 8/30/16.
//
//

import Foundation

class Interpreter {
    
    var stack = [String]()
    
    var dictionary = [String]()
    
    let someValue = "8005551234"
    
    
    func checkNumString (numOrString : String) {
        let numberCharacters = NSCharacterSet.decimalDigitCharacterSet().invertedSet
        let letterCharacters = NSCharacterSet.letterCharacterSet()
        if !numOrString.isEmpty && numOrString.rangeOfCharacterFromSet(numberCharacters) == nil { //Check string for numbers
            stack.append(numOrString)
            print("It's numbers")
        }
        else if !numOrString.isEmpty && numOrString.rangeOfCharacterFromSet(letterCharacters) != nil {
            dictionary.append(numOrString)
            print("It's letters")
        }
        else {
            print("Unknown Word")
        }
    }
}

    //Check if dictionary contains an element with a given string
    //if dictionary.contains(numOrString)

    /*
    func AddWords (newDictionary : String) {
        for word in newDictionary.characters {
            dictionary[word].uppercaseString = newDictionary[word]
        }
    }
    
    func Run (text : String) {
        
    }
 
 */