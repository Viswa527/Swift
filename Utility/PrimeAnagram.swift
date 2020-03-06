//
//  PrimeAnagram.swift
//  Utility
//
//  Created by admin on 03/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
class PrimeAnagram
{
    public static func isPrimeAnagram(_ num:Int) -> Bool
    {
        
        func isPrime(_ number:Int) ->Bool           // function to check prime number or not and returns Boolean value (true or False)
            {
                if number > 3 && number > -1
                {
                    for iterator in 2...number-1
                    {
                        if number % iterator == 0
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
                var number=number
                while (number != 0)                        // Reverse mechanisam
                {
                    value = value * 10
                    value = value + number % 10
                    number = number / 10
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
        if isPrime(num) && isAnagram(num)
        {
            return true
        }
        else
        {
            return false
        }
    }
}
