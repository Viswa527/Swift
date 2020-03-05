//
//  main.swift
//  LeapYear
//
//  Created by admin on 05/03/20.
//  Copyright © 2020 admin. All rights reserved.
//
import Foundation
var num=Int(readLine()!)!    // User input

if num%400==0 || num%4==0 && num%100 != 0    //condition to check Number is leapyear or not
{
    print("\(num) is a Leap Year")
}
else
{
    print("\(num) is not a Leap  Year")
}
