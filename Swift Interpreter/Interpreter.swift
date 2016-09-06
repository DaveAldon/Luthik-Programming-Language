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
    
    //This function differentiates between letters, numbers, and other symbols
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
    
    func PrintWords() -> [String] {
        var printWordsSwitch = [String]()
        switch printWordsSwitch[0] {
        case "print" : func printIt(terp : Interpreter) {
            if terp.stack.count < 1 {
                print("Nothing in stack")
            }
            else {
                let tempOutput = terp.stack.removeLast()
                print(tempOutput)
            }
            }
        case "pstack" : func printStack(terp : Interpreter) {
            let tempOutput = terp.stack
            print(tempOutput)
            }
        default : print("PrintWords Error")
        }
        
        printWordsSwitch.append("print")
        return printWordsSwitch
    }


    //Adds words from an array to the dictionary
    func AddWords (newDictionary : [String]) {
        let arrayLength = newDictionary.count
        
        for words in 0..<arrayLength {
            dictionary.append(newDictionary[words].lowercaseString)
        }
    }
    
    func Run () {
        stack.append("print")
        AddWords(PrintWords())
    }
}

//Spare snippets:
//Check if dictionary contains an element with a given string
//if dictionary.contains(numOrString)