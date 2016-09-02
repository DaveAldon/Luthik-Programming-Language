//
//  Token.swift
//
//
//  Created by David Crawford on 8/31/16.
//
//

import Foundation

class Token {
    
    private var value : Character?
    
    enum TokenType : Chracter {
        case Integer = "INTEGER"
        case Plus = "PLUS"
        case Newline = "NEWLINE"
    }
    
    var tokenTypeDescription: String {
        get {
            return self.tokenTypeDescription
        }
        set {
            tokenTypeDescription = self.tokenTypeDescription
        }
    }
    
    enum Operator {
        case Add
        case Assignment
    }
    
    mutating func TokenType(tokenTypeDescription : String) -> Void {
        self.tokenTypeDescription = tokenTypeDescription
    }
}

func Token(charValue : Character) {
    self.value = charValue
}