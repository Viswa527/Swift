//
//  Binary.swift
//  ToBinay
//
//  Created by admin on 03/03/20.
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
}
