//
//  main.swift
//  Harmonic
//
//  Created by admin on 05/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var number = Int(readLine()!)!    // User Input
var total = 1.00            // Varable to add all the elements
if number > -1            //check's the condition whether the user input is above 0
{
    if number > 1
    {
        for index in 1...number
            {
               total=total+Double(1/Double(index))        //total will be updated everytime in for-loop
            }
            print(total)
        }
    else
    {
             switch number                //switch to get values according to user input
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
