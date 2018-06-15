//
//  Player.swift
//  Durak
//
//  Created by Caroline Berger on 13/06/2018.
//  Copyright © 2018 Caroline Berger. All rights reserved.
//

import Foundation

public class Player {
    /**
    * Player has a hand but also
    * has the functionality of making moves
    **/
    public var hand:Array<Card>;
    public var isAttacking:Bool;
    public var isDefending:Bool;
    
    
    init(){
        hand = Array<Card>();
        isAttacking = false;
        isDefending = false;
    }
    public func isDefendSuccessful()-> Bool{
        if(self.isDefending == true){
            
        }
        return false;
    }
    public func numCards() -> Int{
        return hand.count;
    }
    public func collectCard(card:Card){
        hand.append(card);
    }
    
    fileprivate func removeFromHand(_ card: Card) {
        // if the move is legal, update the deck of the Player (remove the card)
        
        if let index = self.hand.index(of: card){
            self.hand.remove(at: index);
        }
    }
    
    public func playCard(card:Card){
        var type:MoveType = MoveType.defense;
        if(self.isAttacking){
            type = MoveType.attack;
        }
        let myMove = Move(player:self, card:card, type:type)
        
        if(Game.isLegal(move: myMove)){
            print("Move is legal");
            removeFromHand(card);
            Game.updateModel(move: myMove);
        }
    }

  

    
    
}


