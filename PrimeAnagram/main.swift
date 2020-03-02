//
//  main.swift
//  PrimeAnagram
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var number = 1000                           // user input
func isPrime(_ number:Int) ->Bool           // function to check prime number or not and returns Boolean value (true or False)
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
func reverse(_ number:Int) -> Int           // function to convert the number to reverse and returns the reversed number
{
    var value = 0
    var num=number
    while (num != 0)                        // Reverse mechanisam
    {
        value = value * 10
        value = value + num % 10
        num = num / 10
    }
    return value
}
func isAnagram(_ number:Int) -> Bool        // function to check the number is Anagram or not return Boolean value
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
    if isPrime(i) && isAnagram(i)           // checks Anagram and Prime then only prints value
    {
        print(i)
    }
}
