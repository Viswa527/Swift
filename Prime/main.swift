//
//  main.swift
//  Prime
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var Number = 1000
func isPrime(_ number:Int) ->Bool
{
    if number > 3
    {
        for i in 2...number-1
        {
            if number % i == 0
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
for i in 0...Number
{
    if isPrime(i)
    {
        print(i)
    }
}
