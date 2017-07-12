//
//  ViewController.swift
//  FizzBuzzTDD
//
//  Created by Ron Ramirez on 6/10/17.
//  Copyright © 2017 Ron Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var game : Game?
    var gameScore : Int?
    
    //MARK: View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    //MARK: Helper Functions
    
    func play(move : String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
    
}

