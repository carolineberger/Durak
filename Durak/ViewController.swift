//
//  ViewController.swift
//  Durak
//
//  Created by Caroline Berger on 13/03/2018.
//  Copyright © 2018 Caroline Berger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var deck = Deck.standard52CardDeck();
        
        var player1Hand = Array<Card?>();
        var player2Hand = Array<Card?>();
        deck.shuffle(); // works

        
        for _ in 1 ... 5 {
            player1Hand.append(deck.deal());
            player2Hand.append(deck.deal());
        }

        print(deck.count()); 
        print(player1Hand);
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

