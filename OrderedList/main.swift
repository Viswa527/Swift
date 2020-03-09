//
//  main.swift
//  OrderedList
//
//  Created by admin on 09/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

let path = "/Users/admin/Desktop/Mytext2.txt" // Welcome to my swift programming world
var findingWord = readLine()!
var myValues:String!
do {
    let data = try NSString(contentsOfFile: path,encoding: String.Encoding.ascii.rawValue)
    myValues = data as String
    print(data)
}
var string = (myValues)!
