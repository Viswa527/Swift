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
        var string = string1
        var string1 = string2
        
        string = string.replacingOccurrences(of: " ", with: "")               //to delete spaces or replaceing all spaces in String
        string1 = string1.replacingOccurrences(of: " ", with: "")

        string = string.uppercased()                                          // to convert into uppercase
        string1 = string1.uppercased()

        let stringArray = string.sorted()                                           // to be sorted and returns an Array of characters
        let string1Array = string1.sorted()

        loop:if string1Array.count == stringArray.count  // nameing the condiitonal loop as "loop" checks both Arrays length are equal or not
            {
                for i in 0...string1Array.count-1
                {
                    if string1Array[i] != stringArray[i]
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
