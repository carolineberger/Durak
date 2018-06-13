/*
 This source file is part of the Swift.org open source project
 Copyright 2015 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception
 See http://swift.org/LICENSE.txt for license information
 See http://swift.org/CONTRIBUTORS.txt for Swift project authors
 */

import UIKit

public struct Card{
    
    internal var backImage : UIImage
    internal var isFaceUp: Bool
    
    let rank: Rank
    let suit: Suit
    
  
    
    
    
    public init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
        backImage = UIImage(named: "cardback")!
        isFaceUp = false
    }
}

// MARK: - Equatable
extension Card: Equatable {
    public static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.rank == rhs.rank && lhs.suit == rhs.suit
    }
}


// MARK: - Comparable
extension Card: Comparable {
    public static func <(lhs: Card, rhs: Card) -> Bool {
        return lhs.rank == rhs.rank ? lhs.suit < rhs.suit : lhs.rank < rhs.rank
    }
}

// MARK: - CustomStringConvertible
extension Card : CustomStringConvertible {
    public var description: String {
        return "\(suit) \(rank)"
    }
}
