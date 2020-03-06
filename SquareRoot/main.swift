//
//  main.swift
//  SquareRoot
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var number:Double = Double(readLine()!)!                // reading input from the user ads of DOUBLE type

func squareRootOf(_ number:Double) -> Double                // accepts only double type of data
{
    let result:Double = number.squareRoot()             // squareRoot() gives outpur in double type
    return result
}

print(squareRootOf(number))
