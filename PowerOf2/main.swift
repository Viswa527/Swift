//
//  main.swift
//  PowerOf2
//
//  Created by admin on 05/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var number = Int(readLine()!)!
var value = 1                    // Intializing the value be 1
if number >= 0
{
    if(number != 0)                // checks the condition
    {
        for _ in 0...number-1
        {
            value=value*2        //calculation of Power of 2
        }
        print("2^\(number) : \(value)")
    }
    else
    {
        print("2^\(number) : \(value)")
    }
}
else
{
    print("Please enter positive number")
}


