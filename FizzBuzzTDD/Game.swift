//
//  Game.swift
//  FizzBuzzTDD
//
//  Created by Ron Ramirez on 6/10/17.
//  Copyright © 2017 Ron Ramirez. All rights reserved.
//

import Foundation

class Game {
    var score : Int
    var brain : Brain
    
    
    //Initializers
    init() {
        score = 0
        brain = Brain()
    }
    
    func play(move : String) -> Bool {
     
        let result = brain.check(number: score + 1)
        
        if result == move {
            score += 1
            return true
        } else {
            return false
        }
    }
    
}
