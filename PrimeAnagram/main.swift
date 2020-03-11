//
//  main.swift
//  PrimeAnagram
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

let number = 1000
for i in 0...number
{
    if Prime.isPrime(i) && Anagram.isAnagram(i)
    {
        print(i)
    }
}
