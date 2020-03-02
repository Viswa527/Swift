//
//  main.swift
//  BubbleSort
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var unsortedArray = [8,27,2,5,7,48,1,10,15,3,4,6,9,0]
func bubbleSort(_ array:Array<Int>) -> [Int]
{
    var arrSort:Array<Int> = array
    let len=arrSort.count
    for _ in 0...len-1
    {
        for j in 0...len-2
        {
            if arrSort[j+1] < arrSort[j]
            {
                let temp = arrSort[j+1]
                arrSort[j+1] = arrSort[j]
                arrSort[j] = temp
            }
        }
    }
    return arrSort
}
var sortedArray = bubbleSort(unsortedArray)
for i in sortedArray
{
    print(i,terminator:" ")
}
