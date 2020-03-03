//
//  function.swift
//  BinarySwapNibbles
//
//  Created by admin on 03/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

public class convert
{
    public static func toValue(_ sr:String) -> Int
    {
        let str = sr
        var val:Int = 0
        var last = str.count-1
        for i in str
        {
            let x = Int(pow(2.0, Double(last)))
            if  i == "1"
            {
                val = val + (x * 1)
            }
            last = last - 1
        }
        return val
    }
}
