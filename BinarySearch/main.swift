//
//  main.swift
//  BinarySearch
//
//  Created by admin on 03/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var str = "hello world how are you what is going on"
var find = "are"
var strArr = str.split(separator: " ").sorted()
for i in 0...strArr.count-1
{
    if find == strArr[i]
    {
        print(find)
    }
}
