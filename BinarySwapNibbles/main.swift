//
//  main.swift
//  BinarySwapNibbles
//
//  Created by admin on 03/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var number = Int(readLine()!)!
var binaryString = Binary.toBinaryOf(number)

if binaryString.count % 8 != 0
{
    let pad = 8 - binaryString.count % 8
    for _ in 0...pad-1
    {
        binaryString = "0" + binaryString
    }
}

let valueBefore = Binary.toDecimalOf(binaryString)
var temp = 0
var nn = ""
var oo = ""
for i in binaryString
{
    if temp < 4
    {
        nn.append(i)
        temp += 1
    }
    else
    {
        oo.append(i)
    }
}
print(Binary.toDecimalOf(oo+nn))
