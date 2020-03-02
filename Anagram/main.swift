//
//  main.swift
//  BridgeLabzPrograms
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.

import Foundation
var str = "heart"
var str1 = "earth"

str = str.replacingOccurrences(of: " ", with: "")
str1 = str1.replacingOccurrences(of: " ", with: "")

str = str.uppercased()
str1 = str1.uppercased()

var strArray=str.sorted()
var str1Array=str1.sorted()

loop:if str1Array.count == strArray.count
{
    for i in 0...str1Array.count-1
    {
        if str1Array[i] != strArray[i]
        {
            print("Not a Anagram")
            break loop
        }
    }
    print("Anagram")
}
else
{
    print("Not a Anagram")
}
