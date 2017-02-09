//
//  Deck.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation
import GameKit

class Deck {
    var cards : [Card] = []
    var playerDecks : ([Card],[Card]) = ([],[])
    let suits : [Suit] = [.club, .diamond, .spades, .hearts]
    var ranks : [Rank] = [.two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .queen, .king, .ace]
    
    init() {
        for suit in suits {
            for rank in ranks {
                cards.append(Card(rank: rank,suit: suit))
            }
        }
        cards = GKRandomSource().arrayByShufflingObjects(in: cards) as! [Card]
        playerDecks = cards.split()
    }
    
    func split() {
        self.cards.split()
    }
}


