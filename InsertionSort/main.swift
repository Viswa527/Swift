//
//  main.swift
//  InsertionSort
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var ar = [6,8,3,5,2,1,9,4,7,0]
func insertionSort(_ arr:Array<Int>) -> [Int]
{
    var arrSort = arr
    for i in 1...arr.count-1
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
var sorted = insertionSort(ar)
for i in sorted
{
    print(i,terminator:" ")
}
