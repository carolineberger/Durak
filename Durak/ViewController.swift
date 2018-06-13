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
        var myGame:Game = Game();
        print(myGame.player1Hand);
        print(myGame.turn);
        print(myGame.switchTurn());
        print(myGame.turn);
    
        
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

