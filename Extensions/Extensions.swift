//
//  Extensions.swift
//  Extensions
//
//  Created by othman safarini on 2/18/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    
    func whisper() -> String {
        return self.lowercased()
    }
    
    
    func shout() -> String {
        return self.uppercased()
    }
    
    
    var pigLatin : String {
        get {
            
            if self.characters.count == 0 {
                return self
                
            } else {
                var newWordArray = [String]()
                let wordArray = self.components(separatedBy: " ")
                for word in wordArray {
                    //get first word
                    var letters = Array(word.characters)
                    let firstLetter = String(letters.removeFirst()).lowercased()
                    let secondLetter = String(letters.prefix(1)).capitalized
                    let remainder = String(letters.dropFirst())
                    
                    var newWord = secondLetter + remainder + firstLetter
                    newWord += "ay "
                    newWordArray.append(newWord)
                }
                
                let trimEnd = String(newWordArray.joined().characters.dropLast())
                return trimEnd
            }
        }
    }
    
    var points: Int {
        get {
            var score = 0
            if self.isEmpty {
                return score
            } else {
                let vowels = ["a", "e", "i", "o", "u"]
                let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "s", "t", "v", "w", "x", "y", "z"]
                let letters = self.characters
                for letter in letters {
                    if vowels.contains(String(letter).lowercased()) {
                        score += 2
                    } else if consonants.contains(String(letter).lowercased()) {
                        score += 1
                    }
                }
            }
            return score
        }
    }
    
    var unicornLevel: String {
        get {
            
            var wordString = ""
            let words = self.components(separatedBy: " ")
            for word in words {
                let letterCount = word.characters.count
                let unicornString = String(repeating: "🦄", count: letterCount)
                wordString += unicornString + " "
                
            }
            
            wordString.remove(at: wordString.index(before: wordString.endIndex))
            return wordString
        }
    }
}

extension Int {
    
    func half() -> Int {
        return (self/2)
    }
    
    func isDivisible(by number: Int) -> Bool {
        guard self%number == 0 else {return false}
        return true
    }
    
    var squared: Int {
        return self*self
    }
    
    var halved: Int {
        return self/2
    }
}
