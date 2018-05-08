//
//  Deck.swift
//  Durak
//
//  Created by Caroline Berger on 08/05/2018.
//  Copyright © 2018 Caroline Berger. All rights reserved.
//

public struct Deck {
    fileprivate var cards: [Card]
    
    public static func standard52CardDeck() -> Deck {
        let suits: [Suit] = [.spades, .hearts, .diamonds, .clubs]
        let ranks: [Rank] = [.two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .queen, .king, .ace]
        
        var cards: [Card] = []
        for rank in ranks {
            for suit in suits {
                cards.append(Card(rank: rank, suit: suit))
            }
        }
        
        return Deck(cards)
    }
    
    public init(_ cards: [Card]) {
        self.cards = cards
    }
    
    public mutating func shuffle() {
        cards.shuffle()
    }
    
    public mutating func deal() -> Card? {
        guard !cards.isEmpty else { return nil }
        
        return cards.removeLast()
    }
    public func count() -> Int {
        return cards.count;
    }

}

// MARK: - ExpressibleByArrayLiteral
extension Deck : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Card...) {
        self.init(elements)
    }
}

// MARK: - Equatable
extension Deck : Equatable {}

public func ==(lhs: Deck, rhs: Deck) -> Bool {
    return lhs.cards == rhs.cards
}
