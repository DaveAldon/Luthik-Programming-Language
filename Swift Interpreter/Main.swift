//
//  Main.swift
//  
//
//  Created by David Crawford on 8/29/16.
//
//

import Foundation

let file = "luthiksyntax.luthik";

while (true) {
    var input = "";
    
    do {
        print("Hello");
        
        if let dir = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first {
            let path = NSURL(fileURLWithPath: dir).URLByAppendingPathComponent(file)
            
            //reading
            do {
                let text = try NSString(contentsOfURL: path, encoding:NSUTF8StringEncoding)
                let input = readLine()
                print("yay")
            }
            catch {
                print("No file in path")
            }
        }
    }
}