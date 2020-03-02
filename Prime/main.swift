//
//  main.swift
//  Prime
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var Number = 1000
func isPrime(_ number:Int) ->Bool   // function to  find a prime  number or not
{
    if number > 3 && number > -1    // condition
    {
        for i in 2...number-1
        {
            if number % i == 0
            {
                return false
            }
        }
        return true
    }
    else
    {
        return true
    }
}
for i in 0...Number     // looping to all numbers
{
    if isPrime(i)       // checking prime or not through the isPrime() function
    {
        print(i)        // prints PRIME numbers
    }
}
