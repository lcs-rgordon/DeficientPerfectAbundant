//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT

// Loop forever until valid input found
var validInput = 0 // declared outside the loop, so we can use it AFTER the loop is finished

while 1 == 1 {
    
    // Wait for input
    // Test #1: Make sure input is not nil
    guard let givenInput = readLine() else {
        
        // If we got here, input is nil
        // Wait for input again
        continue    // continue with next iteration of the loop
    }
    
    // Test #2: Make sure input can be represented as an integer
    guard let givenInteger = Int(givenInput) else {
        
        // If we got here, the input as a string could not be represented as an integer
        // e.g.: "seventy-three" cannot be converted to 73 automatically
        // So, wait for input again
        continue    // continue with next iteration of the loop
        
    }
    
    // Test #3: Make sure input is in correct range
    if givenInteger < 1 || givenInteger > 32500 {
        
        // If we got here, input is too low or too high
        // So, wait for input again
        continue
        
    }
    
    // Input is valid, so assign it to the variable to be used outside this loop
    validInput = givenInteger
    break // important - must be present to end the loop
    
}

// PROCESS
// DEBUG text
print("Input given was: \(validInput)")


// OUTPUT


