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

var foundAtIndex = Binary.binarySearch(strArr,find)        // calling a binarySearch function which returns Int(index) or String(not found)
print(foundAtIndex)     
