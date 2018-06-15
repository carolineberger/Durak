import UIKit

public struct Card{
    
    internal var backImage : UIImage
    internal var frontImage : UIImage
    internal var isFaceUp: Bool
    
    let rank: Rank
    let suit: Suit
    
    public init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
        backImage = UIImage(named: "cardback")!
        
        frontImage = UIImage(named: "\(self.rank)_of_\(self.suit)")!
        isFaceUp = false
    }
    
}

extension Card: Equatable {
    public static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.rank == rhs.rank && lhs.suit == rhs.suit
    }
}


extension Card: Comparable {
    public static func <(lhs: Card, rhs: Card) -> Bool {
        return lhs.rank == rhs.rank ? lhs.suit < rhs.suit : lhs.rank < rhs.rank
    }
}

extension Card : CustomStringConvertible {
    public var description: String {
        return "\(rank)_of_\(suit)"
    }
}
