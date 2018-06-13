//
//  Game.swift
//  Durak
//
//  Created by Caroline Berger on 28/05/2018.
//  Copyright © 2018 Caroline Berger. All rights reserved.
//

import Foundation
public struct Game {
    var deck: Deck;
    //var player1Hand:Array<Card?>;
    //var player2Hand:Array<Card?>; //move this to the Player struct
    var player1:Player;
    var player2:Player;
    var trash:Array<Card?>;
    static var trump:Card?;
    static var attackingCard:Card?;

    
    init(){
        deck = Deck.standard52CardDeck();
        trash = Array<Card?>();
        player1 = Player();
        player2 = Player();
        Game.trump = deck.deal()!;
        initCardPiles();
    }
    fileprivate mutating func initCardPiles() {
        self.deck.shuffle();
        for _ in 1 ... 5 {
            self.player1.collectCard(card: deck.deal());
            self.player2.collectCard(card: deck.deal());
        }
    }
    public mutating func addToTrash (toTrash:Card) {
        trash.append(toTrash);
    }
    
    public static func isLegal(card:Card, isAttacking:Bool) -> Bool{
        if (isAttacking == true){
            //set card
            attackingCard = card;
            return true;
        }
        else if (card.suit != trump?.suit && card.suit != attackingCard?.suit){
            return false; //suit is neither trump nor the same, it's not a legit card to deal
            
        }
        else if (card.suit == attackingCard?.suit && card.rank < (attackingCard?.rank)!){
            return false; // same suit but the rank of the defendor is too low
        }
        // else defendor is a trump and attackingCard is not a trump or they are both the same (other) suit and the defendor is larger
        
        // in the case of true, the defender card, and attacking card are trashed, the player turn is swapped
        return true;
    }

    
    
}
