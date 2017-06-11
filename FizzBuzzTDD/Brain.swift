//
//  Brain.swift
//  FizzBuzzTDD
//
//  Created by Ron Ramirez on 6/10/17.
//  Copyright © 2017 Ron Ramirez. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleByThree(number : Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number : Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByFifteen(number : Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    //Mark: Helper Functions
    
    func isDivisibleBy(divisor: Int, number : Int) -> Bool {
        return number % divisor == 0
    }
    
    func check(number : Int) -> String {
        if isDivisibleByFifteen(number: number) {
            return "FizzBuzz"
        } else if isDivisibleByThree(number: number) {
            return "Fizz"
        }else if isDivisibleByFive(number: number){
            return "Buzz"
        }else {
            return "\(number)"
        }
    }
}

