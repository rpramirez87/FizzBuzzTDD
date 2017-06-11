//
//  FizzBuzzTDDTests.swift
//  FizzBuzzTDDTests
//
//  Created by Ron Ramirez on 6/10/17.
//  Copyright © 2017 Ron Ramirez. All rights reserved.
//

import XCTest
@testable import FizzBuzzTDD


class FizzBuzzTDDTests: XCTestCase {
    
    var brain : Brain!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        //Initialize brain
        self.brain = Brain()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
        //Deinitialize brain
        self.brain = Brain()
        
    }
    
    
    //Divisible by Three Tests
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 4)
        XCTAssertEqual(result, false)
    }
    
    //Divisible by Five Tests
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(number : 5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 6)
        XCTAssertEqual(result, false)
    }
    
    //Divisible by Fifteen Tests
    
    func testIsDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(number : 15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(number : 16)
        XCTAssertEqual(result, false)
    }
    
    
    //Fizz/Buzz/FizzBuzz Tests
    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, "Fizz")
    }
    
    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, "Buzz")
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, "FizzBuzz")
    }
    
    func testSayNumber() {
        let result = brain.check(number: 1)
        XCTAssertEqual(result, "1")
    }
}
