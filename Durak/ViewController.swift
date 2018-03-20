//
//  ViewController.swift
//  Durak
//
//  Created by Caroline Berger on 13/03/2018.
//  Copyright © 2018 Caroline Berger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var attackerCard: UIImageView!
    @IBOutlet weak var trashDeck: UIImageView!
    @IBOutlet weak var deckCard: UIImageView!
    @IBOutlet weak var suitCard: UIImageView!
    
    @IBOutlet weak var playerCard3: UIImageView!
    @IBOutlet weak var playerCard2: UIImageView!
    @IBOutlet weak var playerCard4: UIImageView!
    @IBOutlet weak var defenderCard: UIImageView!
    
    @IBOutlet weak var playerCard1: UIImageView!
    @IBOutlet weak var playerCard6: UIImageView!
    @IBOutlet weak var playerCard5: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        self.suitCard.image = UIImage (named: "")
        self.suitCard.image = #imageLiteral(resourceName: "6_of_clubs")
        self.deckCard.image = UIImage (named: "")
        self.deckCard.image = #imageLiteral(resourceName: "backOfCard")
        self.trashDeck.image = UIImage(named:"")
        self.trashDeck.image = #imageLiteral(resourceName: "backOfCard")
        self.attackerCard.image = UIImage (named: "")
        self.attackerCard.image = #imageLiteral(resourceName: "6_of_clubs")
        self.defenderCard.image = UIImage (named: "")
        self.defenderCard.image = #imageLiteral(resourceName: "6_of_clubs")

        
        self.playerCard1.image = UIImage (named: "")
        self.playerCard1.image = #imageLiteral(resourceName: "6_of_clubs")
        
        
        self.playerCard2.image = UIImage (named: "")
        self.playerCard2.image = #imageLiteral(resourceName: "6_of_clubs")
        
        
        self.playerCard3.image = UIImage (named: "")
        self.playerCard3.image = #imageLiteral(resourceName: "6_of_clubs")
        
        
        self.playerCard4.image = UIImage (named: "")
        self.playerCard4.image = #imageLiteral(resourceName: "6_of_clubs")
        
        self.playerCard5.image = UIImage (named: "")
        self.playerCard5.image = #imageLiteral(resourceName: "6_of_clubs")
        
        self.playerCard6.image = UIImage (named: "")
        self.playerCard6.image = #imageLiteral(resourceName: "6_of_clubs")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

