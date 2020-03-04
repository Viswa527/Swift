//
//  Insertion.swift
//  Utility
//
//  Created by admin on 04/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
public class InsertionSort
{
    public static func insertionSort(_ array:Array<Int>) -> [Int]         // Insertion sort function returns sorted Array
    {
        var arrSort = array                                 // taken into new Array because array is umutable so we copied into arrSort
        for i in 1...array.count-1
        {
            let value = arrSort[i]                          // to insert the value in postion
            var index = i-1
            while index >= 0 && value < arrSort[index]      // condition index should me greater then are equal to zero and values must be compared
            {
                let temp = arrSort[index+1]                 // swapping two values in Array
                arrSort[index+1] = arrSort[index]
                arrSort[index] = temp
                index=index-1
            }
        }
        return arrSort                                      // returning the Array
    }
}
