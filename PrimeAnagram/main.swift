//
//  main.swift
//  PrimeAnagram
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var number = 300
func isPrime(_ number:Int) ->Bool
{
    if number > 3 && number > -1
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
func reverse(_ number:Int) -> Int
{
    var value = 0
    var num=number
    while (num != 0)
    {
        value = value * 10
        value = value + num % 10
        num = num / 10
    }
    return value
}
func isAnagram(_ number:Int) -> Bool
{
    if number == reverse(number)
    {
        return true
    }
    else
    {
        return false
    }
}
for i in 0...number
{
    if isPrime(i) && isAnagram(i)
    {
        print(i)
    }
}
