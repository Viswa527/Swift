//
//  main.swift
//  BinarySearch
//
//  Created by admin on 03/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var str = "hello world how are you what omg is going on wha"
var find = "hello"
var strArr:Array<String> = []
var t = ""
for i in str
{
    if i == " "
    {
        strArr.append(t)
        t = ""
    }
    else
    {
        t.append(i)
    }
}
strArr.append(t)
strArr = strArr.sorted()
func binarySearch(_ numbers: [String],_ value: String) -> Int
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
    return 0
}
var newChanges = binarySearch(strArr,find)
print(newChanges)
print(strArr)
