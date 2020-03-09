//
//  main.swift
//  Prime
//
//  Created by admin on 09/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

let number = 1000
func isPrime(_ number)->Bool
{
    if number > 3
    {
        for i in 4..<number
        {
            if number%i == 0
            {
                return false
            }
        }
        return true
    }
    else
    {
        return true
    }
}
var array:[[Int]]
for
