//
//  main.swift
//  SquareRoot
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var number:Double = Double(readLine()!)!

func squareRo(_ number:Double) -> Double
{
    let result:Double = number.squareRoot()
    return result
}

print(squareRo(number))
