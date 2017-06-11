//
//  GameTests.swift
//  FizzBuzzTDD
//
//  Created by Ron Ramirez on 6/10/17.
//  Copyright © 2017 Ron Ramirez. All rights reserved.
//

import XCTest

@testable import FizzBuzzTDD

class GameTests: XCTestCase {
    
    var game : Game!
    
    override func setUp() {
        super.setUp()
        
        //Initialize game
        game = Game()
    }
    
    override func tearDown() {
        super.tearDown()
        
        //Deinitialize Game
        game = nil
        
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testScoreGetsIncrementedWhenUserPlays() {
        let _ = game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testScoreGetsIncrementedWhenUserPlaysAgain() {
        game.score = 1
        let _ = game.play(move: "2")
        XCTAssertTrue(game.score == 2)
    }
    
    //Fizz Tests
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzMoveIsWrong() {
        game.score = 1
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzMoveIsRight() {
        game.score = 4
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzMoveIsWrong() {
        game.score = 3
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzMoveIsWrong() {
        game.score = 13
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberMoveIsRight() {
        game.score = 0
        let result = game.play(move: "1")
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberMoveIsWrong() {
        game.score = 2
        let result = game.play(move: "3")
        XCTAssertEqual(result, false)
    }
    

    
    
    
}
