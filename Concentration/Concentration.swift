//
//  Concentration.swift
//  Concentration
//
//  Created by Fidan Mammadova on 03.03.24.
//

import Foundation


class Concentration
{
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        
    }
    
    init(numberOfPairsOfCards: Int){
        for identifier in 0..<numberOfPairsOfCards {
            let card = Card(identifier: identifier)
            cards += [card, card]
        }
    }
}

