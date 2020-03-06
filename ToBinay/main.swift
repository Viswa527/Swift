//
//  main.swift
//  ToBinay
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var number = Int(readLine()!)!                                  // to take input from the user
var binaryString = Binary.toBinaryOf(number)

if binaryString.count >= 4 && binaryString.count % 4 == 0           // checking the string bust be in length 4
{
    print(binaryString)
}
else
{
    let pad = 4 - binaryString.count % 4                            // string should be in 4 bit format
    for _ in 0...pad-1
    {
        binaryString = "0" + binaryString
    }
    print(binaryString)
}
