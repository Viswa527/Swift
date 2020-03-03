//
//  main.swift
//  BinarySearch
//
//  Created by admin on 03/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var string = readLine()!
var find = readLine()!
var strArr:Array<String> = []
var temp = ""
for i in string
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
strArr.append(temp)
strArr = strArr.sorted()
func binarySearch(_ numbers: [String],_ value: String) -> Any
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
var foundAtIndex = binarySearch(strArr,find)
print(foundAtIndex)
