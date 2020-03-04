//
//  main.swift
//  MergeSort
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var unSortedArray = [6,8,3,12,5,14,2,44,1,9,4,7,0]
func sortMerge(_ array:Array<Int>) -> [Int]
{
    if array.count == 1
    {
        return array
    }
    else
    {
        let len = array.count/2
        let co = array.count
        let arr = sortMerge(Array(array[0..<len]))
        let brr = sortMerge(Array(array[len..<co]))
        var crr:[Int] = []
        var a = 0
        var b = 0
        while  a<arr.count && b<brr.count
        {
            if arr[a] < brr[b]
            {
                crr.append(arr[a])
                a=a+1
            }
            else
            {
                crr.append(brr[b])
                b=b+1
            }
        }
        while a<arr.count
        {
            crr.append(arr[a])
            a=a+1
        }
        while b<brr.count
        {
            crr.append(brr[b])
            b=b+1
        }
        return crr
        
    }
}
var sortedArray = sortMerge(unSortedArray)
for i in sortedArray
{
    print(i,terminator:" ")
}
