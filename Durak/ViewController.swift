//
//  ViewController.swift
//  Durak
//
//  Created by Caroline Berger on 13/03/2018.
//  Copyright © 2018 Caroline Berger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var touchDeck: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        Game.start();
        print("Start Print");
        print(Game.deck);
        print("Trump" , Game.trump);
        print("Player 1", Game.player1.numCards());
        print("Player 1", Game.player1.printCards());
        print("Player 2", Game.player2.numCards());
        print("Player 2", Game.player2.printCards());
        
        
       

    
        
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

