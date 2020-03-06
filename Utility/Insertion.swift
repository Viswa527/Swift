//
//  Insertion.swift
//  Utility
//
//  Created by admin on 04/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
public class Insertion
{
    public static func insertionSortOf(_ array:Array<Int>) -> [Int]         // Insertion sort function returns sorted Array
    {
            var arraySort = array                                 // taken into new Array because array is umutable so we copied into arrSort
            for index in 1...array.count-1
            {
                let value = arraySort[index]                          // to insert the value in postion
                var index2 = index-1
                while index2 >= 0 && value < arraySort[index2]      // condition index should me greater then are equal to zero and values must be compared
                {
                    let temp = arraySort[index2+1]                 // swapping two values in Array
                    arraySort[index2+1] = arraySort[index2]
                    arraySort[index2] = temp
                    index2 = index2-1
                }
            }
            return arraySort                                      // returning the Array
    }
}
