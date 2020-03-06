//
//  Binary.swift
//  Utility
//
//  Created by admin on 04/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
public class Binary
{
    public static func binarySearchOf(_ numbers: [String],_ value: String) -> Any  // function to search an string and returns index value or string
    {
        var left = 0
        var right = numbers.count - 1

        while left <= right
        {
            let middle = (left + right)/2

            if numbers[middle] < value
            {
                left = middle + 1
            }
            else
            {
                if numbers[middle] > value
                {
                    right = middle - 1
                }
                else
                {
                    return middle
                }
            }
        }
        return "Not found"
    }
    
    public static func toBinaryOf(_ number : Int) -> String                           // function to convert int -> Binary (String format)
    {
        var string = ""
        var number = number
        while number != 0
        {
            let temp = number%2
            string = String(temp)+string
            number = number/2
        }
        return string
    }
    public static func toDecimalOf(_ sr:String) -> Int      // Accepts binary as String
    {
        let str = sr
        var val:Int = 0
        var last = str.count-1
        for i in str
        {
            let x = Int(pow(2.0, Double(last))) //power of 2
            if  i == "1"
            {
                val = val + (x * 1)
            }
            last = last - 1
        }
        return val                                         // return the value of binary
    }
}
