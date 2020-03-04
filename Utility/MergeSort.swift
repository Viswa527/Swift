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
    public static func mergeSort(_ array:Array<Int>) -> [Int]
    {
        if array.count == 1
        {
            return array
        }
        else
        {
            let len = array.count/2
            let co = array.count
            let arr = mergeSort(Array(array[0..<len]))
            let brr = mergeSort(Array(array[len..<co]))
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
}
