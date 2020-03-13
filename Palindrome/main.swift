//
//  main.swift
//  Palindrome
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var string = readLine()!
var obj = Deque()                  // Createing the object of Queues
for i in string
{
    obj.addRear(String(i))            // passing characters to queues
}
var newString:String = ""
for _ in 0..<string.count
{
    newString.append(String(obj.removeRear()))   // getting the characters from rear end
}
if newString.elementsEqual(string)  // compareing the two strings
{
    print("Palindrome")
}
else
{
    print("Not a Palindrome")
}
