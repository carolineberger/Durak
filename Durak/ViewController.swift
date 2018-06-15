//
//  ViewController.swift
//  Durak
//
//  Created by Caroline Berger on 13/03/2018.
//  Copyright © 2018 Caroline Berger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var trumpLabel: UILabel!
    @IBOutlet weak var trashDeck: UIImageView!
    @IBOutlet weak var deckLabel: UILabel!
    @IBOutlet weak var trashLabel: UILabel!
    @IBOutlet weak var startGame: UIButton!
    @IBOutlet weak var attackCard: UIButton!
    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var defendCard: UIButton!
    @IBOutlet weak var trump: UIImageView!
    @IBOutlet weak var drawCard: UIButton!
    @IBOutlet weak var deckCardCount: UILabel!
    @IBOutlet weak var durakLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        startGame.layer.shadowColor = UIColor.black.cgColor
        startGame.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        startGame.layer.masksToBounds = false
        startGame.layer.shadowRadius = 1.0
        startGame.layer.shadowOpacity = 0.5
        startGame.layer.cornerRadius = startGame.frame.width / 10
        startGame.center = view.center
        durakLabel.center.x = view.center.x
        
        
       
    }

    @IBAction func beginGame(_sender: UIButton){
        
        Game.start();
        trump.image = Game.trump?.frontImage
    
        updateViewFromModel();
        startGame.isHidden = true;
        trump.isHidden = false;
        trashLabel.isHidden = false;
        deckLabel.isHidden = false;
        trumpLabel.isHidden = false;
        deckCardCount.isHidden = false;
        drawCard.isHidden = false;
   
    }
    func updateViewFromModel(){
        deckCardCount.text = "Deck Card Count: \(Game.deck.count())"
        // clear the table
        for button in cardButtons {
            button.isHidden = true;
            button.isEnabled = false;
        }
        for index in Game.human.hand.indices {
            if(index < Game.human.numCards()){
                let button = cardButtons[index]
                let card = Game.human.hand[index]
                button.setImage(card.frontImage, for: UIControlState.normal);
                button.isHidden = false;
                button.isEnabled = true;
            }
        }
        if ((Game.attackingCard) != nil){
            attackCard.setImage(Game.attackingCard?.frontImage, for: UIControlState.normal);
            attackCard.isHidden = false;
            if((Game.defendingCard) != nil){
                defendCard.setImage(Game.defendingCard?.frontImage, for: UIControlState.normal);
                defendCard.isHidden = false;
            }
            
        }
    }
    
    @IBAction func playCard(_ sender: UIButton) {
         if let cardNumber = cardButtons.index(of: sender){
            let selectedCard = Game.human.hand[cardNumber];
            Game.human.playCard(card: selectedCard);
            updateViewFromModel();
            disableBoard(); 
        }
    }
    func disableBoard(){
        for index in Game.human.hand.indices {
            if(index < Game.human.numCards()){
                let button = cardButtons[index]
                button.isEnabled = false;
            }
        }
        drawCard.isEnabled = false;
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

