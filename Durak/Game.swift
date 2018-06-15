//
//  Game.swift
//  Durak
//
//  Created by Caroline Berger on 28/05/2018.
//  Copyright © 2018 Caroline Berger. All rights reserved.
//

import Foundation
public class Game {
    static var gameFinished:Bool = false;
    static var deck: Deck = Deck.standard52CardDeck();
    static var human:Player = Player();
    static var fakeAI:CPU = CPU();
    static var trashPile:Array<Card?> = Array<Card?>();
    static var trump:Card?;
    static var attackingCard:Card?;
    static var defendingCard:Card?;
    
    
    
    public static func start(){
        Game.deck.shuffle();
        Game.trump = Game.deck.deal()!;
        for _ in 1 ... 5 {
            Game.human.collectCard(card: Game.deck.deal()!);
            Game.fakeAI.collectCard(card: Game.deck.deal()!);
        }
        Game.human.isAttacking = true; // set human 1 to attack first
        Game.human.isDefending = false;
        Game.fakeAI.isAttacking = false;
        Game.fakeAI.isDefending = true;
  
    }

    public static func addTotrashPile (totrashPile:Card?) {
        Game.trashPile.append(totrashPile);
    }
    
    public static func isLegal(move:Move) -> Bool{
        // this should return false if the computer hasn't defended or taken the card
        if (move.type == MoveType.attack && move.player.isAttacking == true){
            return true; //the human will always be able to attack with whatever card they want to
        }
        else if (move.card.suit != trump?.suit && move.card.suit != Game.attackingCard?.suit){
            return false; //suit is neither trump nor the same, it's not a legal card to use to defend
            
        }
        else if (move.card.suit == Game.attackingCard?.suit && move.card.rank < (Game.attackingCard?.rank)!){
            return false; // same suit but the rank of the defendor is too low
        }
        // else defendor is a trump and attackingCard is not a trump or they are both the same (other) suit and the defendor is larger
        
        return true;
    }
    static func swapTurn() {
        // in the case of true, the defender card, and attacking card are trashPileed, the human turn is swapped
        // swap turns
        if (Game.human.isAttacking){
            Game.human.isAttacking = false;
            Game.fakeAI.isAttacking = true;
        }
        else {
            Game.human.isAttacking = true;
            Game.fakeAI.isAttacking = false;
        }
    }

    
    public static func updateModel(move:Move){
        
        if(move.type == MoveType.attack){
            Game.attackingCard = move.card;
            fakeAI.notify();
        }
        else if(move.type == MoveType.defense){
            Game.defendingCard = move.card;
        }
        Game.swapTurn();
       
    }
   
    
    
}
