//
//  main.swift
//  InsertionSort
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var unSortedArray = [6,8,3,12,5,14,2,44,1,9,4,7,0]
func insertionSort(_ array:Array<Int>) -> [Int]
{
    var arrSort = array
    for i in 1...array.count-1
    {
        let preV = arrSort[i]
        var index = i-1
        while index >= 0 && preV < arrSort[index]
        {
            let temp = arrSort[index+1]
            arrSort[index+1] = arrSort[index]
            arrSort[index] = temp
            index=index-1
        }
    }
    return arrSort
}
var sortedArray = insertionSort(unSortedArray)
for i in sortedArray
{
    print(i,terminator:" ")
}
