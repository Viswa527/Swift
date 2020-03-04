//
//  Binary.swift
//  Utility
//
//  Created by admin on 04/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
public class Binary
{
    public static func toBinary(_ number : Int) -> String                           // function to convert int -> Binary (String format)
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
    public static func toValue(_ sr:String) -> Int      // Accepts binary as String
    {
        let str = sr
        var val:Int = 0
        var last = str.count-1
        for i in str
        {
            let x = Int(pow(2.0, Double(last))) //power of 2
            if  i == "1"
            {
                val = val + (x * 1)
            }
            last = last - 1
        }
        return val                                         // return the value of binary
    }
}
