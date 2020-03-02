//
//  main.swift
//  InsertionSort
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var unSortedArray = [6,8,3,12,5,14,2,44,1,9,4,7,0]      // targeted array to make into sorted Array
func insertionSort(_ array:Array<Int>) -> [Int]         // Insertion sort function returns sorted Array
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
var sortedArray = insertionSort(unSortedArray)          // collecting the Array which is returned by the insertionSort function
for i in 0...sortedArray.count-1
{
    print(sortedArray[i],terminator:" ")
}
