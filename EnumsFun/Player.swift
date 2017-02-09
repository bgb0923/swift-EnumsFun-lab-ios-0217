//
//  Player.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Player {
    let name : String
    var hand : Hand
    
    init(name: String, hand: Hand) {
        self.name = name
        self.hand = hand
    }
    
    func hasCards() -> Bool {
        return self.hand.cards.count > 0 ? true : false
    }
    
    func flip() -> Card? {
        guard !self.hand.cards.isEmpty else { return nil }
        return self.hand.cards.removeLast()
    }
    
    func give(card: Card) {
        self.hand.give(card: card)
    }
    
    func lose(card: Card) {
        self.hand.cards.removeFirst()
    }
    
    
    
}

