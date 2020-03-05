//
//  main.swift
//  LeapYear
//
//  Created by admin on 05/03/20.
//  Copyright © 2020 admin. All rights reserved.
//
import Foundation
var year = Int(readLine()!)!    // User input

if year%400 == 0 || year%4 == 0 && year%100 != 0    //condition to check Number is leapyear or not
{
    print("\(year) is a Leap Year")
}
else
{
    print("\(year) is not a Leap  Year")
}
