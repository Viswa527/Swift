//
//  main.swift
//  BridgeLabzPrograms
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.

import Foundation
var str = readLine()!
var str1 = readLine()!
if Anagram.isAnagram(str,str1)
{
  print("Anagram")
}
else
{
    print("Not a Anagram")
}
