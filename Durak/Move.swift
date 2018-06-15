//
//  Move.swift
//  Durak
//
//  Created by Caroline Berger on 15/06/2018.
//  Copyright © 2018 Caroline Berger. All rights reserved.
//

import Foundation

public class Move{
    var player:Player
    var card:Card
    var type:MoveType
    
    init(player:Player, card:Card, type:MoveType){
        self.player = player
        self.card = card
        self.type = type
    }
}
