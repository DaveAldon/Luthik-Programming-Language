//
//  Main.swift
//
//
//  Created by David Crawford on 8/29/16.
//
//

import Foundation

let file = "luthiksyntax.luthik"
public var arrayLines = [String]()

do {
    if let dir = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first {
        let path = NSURL(fileURLWithPath: dir).URLByAppendingPathComponent(file)
        
        //Read the file and seperate the lines into an array, skipping blank lines
        do {
            let input = try String(contentsOfURL: path, encoding:NSUTF8StringEncoding)
            let newlineChars = NSCharacterSet.newlineCharacterSet()
            let lines = input.utf16.split { newlineChars.characterIsMember($0) }.flatMap(String.init)
            var linesLength = lines.count

            //Loop through the array and place its values into a public array
            for i in 1..<linesLength {
                arrayLines.append(lines[i])
            }
        }
        catch {
            print("No file in path")
        }
    }
}

//Check out what's inside our public array
print(arrayLines)