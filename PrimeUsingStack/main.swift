//
//  main.swift
//  PrimeUsingStack
//
//  Created by admin on 12/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
let number = 10
for i in 0...number
{
    Stack().push(String(i))
}
for _ in 0...number
{
    let value = Stack().pop()
    if Prime.isPrime(Int(value)!) && Anagram.isAnagram(Int(value)!)
    {
        print(value)
    }
}
