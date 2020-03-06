//
//  MergeSort.swift
//  Utility
//
//  Created by admin on 04/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
public class Merge
{
    public static func mergeSortOf(_ array:Array<Int>) -> [Int]
    {
        if array.count == 1
        {
            return array
        }
        else
        {
            let halfLength = array.count/2
            let length = array.count
            let array = mergeSortOf(Array(array[0..<halfLength]))
            let bArray = mergeSortOf(Array(array[halfLength..<length]))
            var cArray:[Int] = []
            var arrayIndex = 0
            var bArrayIndex = 0
            while  arrayIndex<array.count && bArrayIndex<bArray.count
            {
                if array[arrayIndex] < bArray[bArrayIndex]
                {
                    cArray.append(array[arrayIndex])
                    arrayIndex = arrayIndex+1
                }
                else
                {
                    cArray.append(bArray[bArrayIndex])
                    bArrayIndex = bArrayIndex+1
                }
            }
            while arrayIndex<array.count
            {
                cArray.append(array[arrayIndex])
                arrayIndex = arrayIndex+1
            }
            while bArrayIndex<bArray.count
            {
                cArray.append(bArray[bArrayIndex])
                bArrayIndex = bArrayIndex+1
            }
            return cArray
            
        }
    }
}
