//
//  Interpreter.swift
//  
//
//  Created by David Crawford on 8/30/16.
//
//

import Foundation

class Interpreter {
    var test = "Success"
    var text = ""
    var position = 0
    //var currentToken = [Token]
    
    func Begin (inputText: String) {
       self.text = inputText
    }
    
    func nextToken() -> [Token] {
        if self.position > self.text.characters.count - 1 {
            return nil
        }
    }
}