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
var n = 0 // declared outside the loop, so we can use it AFTER the loop is finished

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
    n = givenInteger
    break // important - must be present to end the loop
    
}

// PROCESS
// Find the sum of divisors
var sum = 1     // 1 is always a proper divisor

// Find more divisors when the input is greater than 2
if n > 2 {
    
    // Inspect between 2 and 1 less than n
    for i in 2...n-1 {
        
        // When there is no remainder, i is a proper divisor of n
        if n % i == 0 {
            sum += i       // Add to the sum of proper divisors
        }
        
    }
    
}

// OUTPUT
// Special case when input was 1
if n == 1 {
    print("1 is a deficient number.")
} else {
    
    // Decide what type of number this is
    if sum < n {
        print("\(n) is a deficient number.")
    } else if sum == n {
        print("\(n) is a perfect number.")
    } else {
        print("\(n) is an abundant number.")
    }
    
}

