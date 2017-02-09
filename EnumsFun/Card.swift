//
//  Card.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

enum Suit: String {

    case spades = "♠️"
    case hearts = "♥️"
    case club = "♣️"
    case diamond = "♦️"
}

enum Rank: Int {
    
    case two = 2, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace
    
    var stringValue : String {
        switch self {
        case .jack:
            return "J"
        case .queen:
            return "Q"
        case .king:
            return "K"
        case .ace:
            return "A"
        default:
            return "\(rawValue)"
        }
    }
    
}

class Card: Equatable {
    let suit : Suit
    let rank : Rank
    var description : String { return "\(suit.rawValue)\(rank.stringValue)" }
    
    init(rank: Rank, suit: Suit ) {
        self.suit = suit
        self.rank = rank
    }

    static func ==(lhs: Card, rhs: Card) -> Bool {
    
        return lhs.rank.rawValue == rhs.rank.rawValue && lhs.suit.rawValue == rhs.suit.rawValue
    }
    
}
