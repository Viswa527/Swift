//
//  main.swift
//  Palindrome
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var string = readLine()!
var obj = Queues()
for i in string
{
    obj.enque(String(i))
}
var newString:String = ""
for _ in 0..<string.count
{
    newString.append(obj.deque())
}
if newString.elementsEqual(string)
{
    print("Palindrome")
}
else
{
    print("Not a Palindrome")
}
