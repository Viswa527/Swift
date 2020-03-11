//
//  Anagram.swift
//  Utility
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
public class Anagram
{
    public static func isAnagram(_ number:Int) -> Bool
    {
        var string = ""
        for i in String(number)
        {
            string = String(i) + string
        }
        if Prime.isPrime(Int(string)!)
        {
            return true
        }
        else
        {
            return false
        }
    }
}
