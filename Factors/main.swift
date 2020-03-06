//
//  main.swift
//  Factors
//
//  Created by admin on 05/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var number = Int(readLine()!)!
var array:[Int] = []

for value in 1...number
{
    if number % value == 0
    {
        array.append(value)
    }
}
print("Factors of the \(number) is  : \(array)")
