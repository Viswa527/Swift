//
//  Anagram.swift
//  Utility
//
//  Created by admin on 03/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
public class Anagram
{
    public static func isAnagram(_ string1:String ,_ string2:String) -> Bool
    {
        var str = string1
        var str1 = string2
        
        str = str.replacingOccurrences(of: " ", with: "")               //to delete spaces or replaceing all spaces in String
        str1 = str1.replacingOccurrences(of: " ", with: "")

        str = str.uppercased()                                          // to convert into uppercase
        str1 = str1.uppercased()

        let strArray = str.sorted()                                           // to be sorted and returns an Array of characters
        let str1Array = str1.sorted()

        loop:if str1Array.count == strArray.count  // nameing the condiitonal loop as "loop" checks both Arrays length are equal or not
            {
                for i in 0...str1Array.count-1
                {
                    if str1Array[i] != strArray[i]
                    {
                        return false    // to exit the loop to end of "loop"
                    }
                }
                return true
            }
            else
            {
                return false
            }
    }
}
