//
//  main.swift
//  BinarySearch
//
//  Created by admin on 03/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var string = readLine()!                    // user inputstring
var find = readLine()!                      // string that should be find in the string
var strArr:Array<String> = []               //intialization of empty Array of type String
var temp = ""                               // empty string


convert:for i in string                     // converting string to array as Split function by seperating by space
{
    if i == " "
    {
        strArr.append(temp)
        temp = ""
    }
    else
    {
        temp.append(i)
    }
}

strArr.append(temp)                         // from above :convert we need to add last element in to array so we apppend to it
strArr = strArr.sorted()                    // sorting the array


func binarySearch(_ numbers: [String],_ value: String) -> Any  // function to search an string and returns index value or string
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

var foundAtIndex = binarySearch(strArr,find)        // calling a binarySearch function which returns Int(index) or String(not found)
print(foundAtIndex)     
