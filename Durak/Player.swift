//
//  Player.swift
//  Durak
//
//  Created by Caroline Berger on 13/06/2018.
//  Copyright © 2018 Caroline Berger. All rights reserved.
//

import Foundation

public struct Player {
    /**
    * Player has a hand but also
    * has the functionality of making moves
    **/
    private var hand:Array<Card?>;
    public var isAttacking:Bool;
    
    init(){
        hand = Array<Card?>();
        isAttacking = false;
        
    }
    public func numCards() -> Int{
        return hand.count;
    }
    public mutating func collectCard(card:Card?){
        hand.append(card);
    }
    
    public mutating func playCard(card:Card){
        // is legal should communicate with
        // the game to check what card is on the deck
        if(Game.isLegal(card: card, isAttacking: self.isAttacking)){
            
        }
        else{
            // display error alert
        }
        
    }

    
    
}


