//
//  main.swift
//  HashingFunction
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
print("Enter number of inputs",terminator:" ")
var number = Int(readLine()!)!
print("Number of slots that to create : ",terminator:" ")
var slots = Int(readLine()!)!
let object = HashFunction()
let result = object.Hashfunction(number, slots)     // calls the hash function 
print(result)
