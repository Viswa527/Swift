//
//  main.swift
//  PrimeUsingStack
//
//  Created by admin on 12/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
let number = 1000
let obj = Stack()
for i in 0...number
{
    obj.push(String(i))                     // pushing all values into Stack
}
for _ in 0...number
{
    let value = Int(obj.peek())!            // getting the values by peeking
    if Prime.isPrime(value) && Anagram.isAnagram(value)
    {
        print(value)
    }
    obj.pop()                                   // popping out the element from the stack
}
