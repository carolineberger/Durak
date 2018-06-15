import Foundation

public class CPU : Player {
    // this player has a hand
    public func defend(){
        // it will play the first card in the hand that it can use to attack
        for card in hand{
            playCard(card: card);
        }
        // catch error, pick up the card, only

        
    }
    public func attack(){
        
    }
    public func notify(){
        
    }
    
    
}
