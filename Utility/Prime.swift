//
//  Prime.swift
//  Utility
//
//  Created by admin on 03/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
public class Prime
{
    public static func isPrime(_ number:Int) ->Bool   // function to  find a prime  number or not
    {
        if number > 3 && number > -1    // condition
        {
            for iterator in 2...number-1
            {
                if number % iterator == 0
                {
                    return false
                }
            }
            return true
        }
        else
        {
            return true
        }
    }
}
