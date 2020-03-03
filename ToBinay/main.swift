//
//  main.swift
//  ToBinay
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var number = Int(readLine()!)!
var str = ""
while number != 0
{
   let temp = number%2
    str = String(temp)+str
    number = number/2
}
if str.count >= 4 && str.count % 4 == 0
{
    print(str)
}
else
{
    let pad = 4 - str.count % 4
    for _ in 0...pad-1
    {
        str = "0"+str
    }
    print(str)
}
