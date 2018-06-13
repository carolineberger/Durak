//
//  Game.swift
//  Durak
//
//  Created by Caroline Berger on 28/05/2018.
//  Copyright © 2018 Caroline Berger. All rights reserved.
//

import Foundation
public struct Game {
    static var deck: Deck = Deck.standard52CardDeck();
    static var player1:Player = Player();
    static var player2:Player = Player();
    static var trash:Array<Card?> = Array<Card?>();
    static var trump:Card?;
    static var attackingCard:Card?;

    
    public static func start(){
        Game.deck.shuffle();
        Game.trump = Game.deck.deal()!;
        for _ in 1 ... 5 {
            Game.player1.collectCard(card: Game.deck.deal()!);
            Game.player2.collectCard(card: Game.deck.deal()!);
        }
        Game.player1.isAttacking = true; // set player 1 to attack first
        Game.player2.isAttacking = false;
    }

    public static func addToTrash (toTrash:Card?) {
        Game.trash.append(toTrash);
    }
    
    public static func isLegal(card:Card, isAttacking:Bool) -> Bool{
        if (isAttacking == true){
            //set card
            Game.attackingCard = card;
            return true;
        }
        else if (card.suit != trump?.suit && card.suit != Game.attackingCard?.suit){
            return false; //suit is neither trump nor the same, it's not a legit card to deal
            
        }
        else if (card.suit == Game.attackingCard?.suit && card.rank < (Game.attackingCard?.rank)!){
            return false; // same suit but the rank of the defendor is too low
        }
        // else defendor is a trump and attackingCard is not a trump or they are both the same (other) suit and the defendor is larger
        
        return true;
    }
    fileprivate static func swapTurn() {
        // in the case of true, the defender card, and attacking card are trashed, the player turn is swapped
        // swap turns
        if (Game.player1.isAttacking){
            Game.player1.isAttacking = false;
            Game.player2.isAttacking = true;
        }
        else {
            Game.player1.isAttacking = true;
            Game.player2.isAttacking = false;
        }
    }
    
    public static func updateBoard(card:Card, isAttacking:Bool){
        if (isAttacking == true){
            //set card
            // the next move is the defender can either play a card or can collect the card
            Game.attackingCard = card;
        }
        else {
            swapTurn();
            // trash attacking card and defending card
            addToTrash(toTrash: card);
            addToTrash(toTrash: attackingCard!);
        }
        
    }
   
    
    
}
