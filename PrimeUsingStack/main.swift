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
    obj.push(String(i))
}
for _ in 0...number
{
    let value = Int(obj.peek())!
    if Prime.isPrime(value) && Anagram.isAnagram(value)
    {
        print(value)
    }
    obj.pop()
}
