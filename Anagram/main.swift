//
//  main.swift
//  BridgeLabzPrograms
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.

import Foundation
var str = readLine()!
var str1 = readLine()!

str = str.replacingOccurrences(of: " ", with: "")               //to delete spaces or replaceing all spaces in String
str1 = str1.replacingOccurrences(of: " ", with: "")

str = str.uppercased()                                          // to convert into uppercase
str1 = str1.uppercased()

var strArray=str.sorted()                                       // to be sorted and returns an Array of characters
var str1Array=str1.sorted()

loop:if str1Array.count == strArray.count                  // nameing the condiitonal loop as "loop" checks both Arrays length are equal or not
{
    for i in 0...str1Array.count-1
    {
        if str1Array[i] != strArray[i]
        {
            print("Not a Anagram ")
            break loop                                     // to exit the loop to end of "loop"
        }
    }
    print("Anagram")
}
else
{
    print("Not a Anagram")
}
