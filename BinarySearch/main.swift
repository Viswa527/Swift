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
var stringArray:Array<String> = []               //intialization of empty Array of type String
var temp = ""                               // empty string


convert:for iterator in string                     // converting string to array as Split function by seperating by space
{
    if iterator == " "
    {
        stringArray.append(temp)
        temp = ""
    }
    else
    {
        temp.append(iterator)
    }
}

stringArray.append(temp)                         // from above :convert we need to add last element in to array so we apppend to it
stringArray = stringArray.sorted()                    // sorting the array

var foundAtIndex = Binary.binarySearchOf(stringArray,find)        // calling a binarySearch function which returns Int(index) or String(not found)
print(foundAtIndex)     
