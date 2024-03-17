//
//  Card.swift
//  Concentration
//
//  Created by Fidan Mammadova on 03.03.24.
//

import Foundation


struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int 
    
    init(identifier: Int) {
        self.identifier = identifier
    }
}
