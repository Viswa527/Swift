//
//  main.swift
//  TemperaturConversion
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

print("Enter c or C for Celsius and f or F for Fahrenheit  : ",terminator:" ")
var charact = readLine()!
func celsisus(_ values:Double) -> Double
{
    return values * (9/5) + 32
}
func fahrenheit(_ value:Double) -> Double
{
    return value - 32 * (5/9)
}


if charact == "c" || charact == "C"
{
    print("Enter the value in Farhen",terminator:" ")
    print(celsisus(Double(readLine()!)!))
}
else
{
    if charact == "f" || charact == "F"
    {
        print("Enter the value in celsisus :",terminator:" ")
        print(fahrenheit(Double(readLine()!)!))
    }
    else
    {
        print("Please make sure that you entered c or C or f or F")
    }
}
