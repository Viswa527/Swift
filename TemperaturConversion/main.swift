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
    let x:Double = values * (9/5) + 32
    return x
}
func fahrenheit(_ value:Double) -> Double
{
    let y:Double = value - 32 * (5/9)
    return y
}
if charact == "c" || charact == "C"
{
    print("Enter the value in Farhen")
    let x:Double = Double(readLine()!)!
    print(celsisus(x))
}
else
{
    if charact == "f" || charact == "F"
    {
        print("Enter the value in celsisus :",terminator:" ")
        let y:Double = Double(readLine()!)!
        print(fahrenheit(y))
    }
    else
    {
        print("Please make sure that you entered c or C or f or F")
    }
}
