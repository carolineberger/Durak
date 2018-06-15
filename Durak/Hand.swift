//
//  Hand.swift
//  Durak
//
//  Created by Caroline Berger on 11/05/2018.
//  Copyright © 2018 Caroline Berger. All rights reserved.
//

import Foundation

public struct Hand {
    fileprivate var cards: [Card];
    /*
    var player1Hand = Array<Card?>();
    var player2Hand = Array<Card?>();
    
    
    print(deck.count()); // 52 before deal
    
    for _ in 1 ... 5 {
    player1Hand.append(deck.deal());
    player2Hand.append(deck.deal());
    }
    // show card function
    
    */
    public init(_ cards: [Card]) {
        self.cards = cards
    }
    
    public mutating func putCard(aCard:Card) {
        self.cards.append(aCard);
    }
    //
    public mutating func removeCard(aCard:Card) -> Card? {
        if let indexToRemove = self.cards.index(of: aCard) {
            self.cards.remove(at: indexToRemove)
            
            return aCard;
        }
        return nil;
    }
    public func count() -> Int {
        return cards.count;
    }
    
    
    
    
    
}
