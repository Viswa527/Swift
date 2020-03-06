//
//  main.swift
//  Coupon
//
//  Created by admin on 05/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var number = Int(readLine()!)!

for _ in 0...number-1
{
    var string = ""
    string = string + String(Int.random(in: 100...999))
    string = string + String(Int.random(in: 1000...9999))
    string = string + String(Int.random(in: 1...9))
    print(string)
}
