//
//  main.swift
//  ToBinay
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var number = Int(readLine()!)!
func toBinary(_ number:Int) -> String
{
    var str = ""
    var numberI = number
    while numberI != 0
    {
        let temp = numberI%2
        str = String(temp)+str
        numberI = numberI/2
    }
    return str
}
var binaryString = toBinary(number)
if binaryString.count >= 4 && binaryString.count % 4 == 0
{
    print(binaryString)
}
else
{
    let pad = 4 - binaryString.count % 4
    for _ in 0...pad-1
    {
        binaryString = "0"+binaryString
    }
    print(binaryString)
}
