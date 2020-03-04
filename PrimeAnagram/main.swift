//
//  main.swift
//  PrimeAnagram
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var number = 1000                         // user input
for i in 0...number
{
    if PrimeAnagram.isPrimeAnagram(i)           // checks Anagram and Prime then only prints value
    {
        print(i)
    }
}
