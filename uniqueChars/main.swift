//
//  main.swift
//  uniqueChars
//
//  Created by Emiko Clark on 11/28/17.
//  Copyright © 2017 Emiko Clark. All rights reserved.
//

import Foundation


class UniqueChars {
    var paragraph = "If you want to jumpstart the process of talking to us about this role, here’s a little challenge: write a program that outputs the largest unique set of characters that can be removed from this paragraph without letting its length drop below 50."
    
    func createUnique() {
        var characterSet = Set<Character>()
        var count = 0
        for char in paragraph {
            if !characterSet.contains(char) {
                count += 1
            }
            characterSet.insert(char)
        }
        print("Unique characters: ",characterSet)

        if (count < 50) {
            print("Unique character count is \(count).")

            var finalString = String(repeatElement(" ", count: (50 - count)))
            let start = finalString.startIndex
            
            while characterSet.count > 0 {
                let c = characterSet.first
                characterSet.remove(c!)
                finalString.insert(c!, at: start)
            }
            print("\nUnique character string is: \"\(finalString)\"\n")
        }
        
    }
}

let uc = UniqueChars()
uc.createUnique()

