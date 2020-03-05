//
//  main.swift
//  Harmonic
//
//  Created by admin on 05/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var number=Int(readLine()!)!
var total=1.00
if number > -1
{
    if number>1
    {
        for i in 1...number
            {
               total=total+Double(1/Double(i))
            }
            print(total)
    }
    else
    {
             switch number
             {
               case 1:
                     print(1)
                default:
                     print(0)
            }
    }
}
else
{
    print("Please enter a positive number")
}
