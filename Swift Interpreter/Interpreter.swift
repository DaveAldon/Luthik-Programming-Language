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
        
    func AddWords (newDictionary : String) {
        for word in newDictionary.characters {
            dictionary[word].uppercaseString = newDictionary[word]
        }
    }
    
    func Run (text : String) {
        
    }
   }