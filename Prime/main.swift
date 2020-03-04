//
//  main.swift
//  Prime
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//
import Foundation
var Number = 32

for i in 0...Number     // looping to all numbers
{
    if Prime.isPrime(i)       // checking prime or not through the isPrime() function
    {
        print(i)        // prints PRIME numbers
    }
}
