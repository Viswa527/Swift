//
//  main.swift
//  OrderedList
//
//  Created by admin on 09/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

let path = "/Users/admin/Desktop/Mytext2.txt" // Welcome to my swift programming world
//var findingWord = readLine()!
var myValues:String!
do {
    let data = try NSString(contentsOfFile: path,encoding: String.Encoding.ascii.rawValue)
    myValues = data as String
    //print(data)
}
var string = (myValues.split(separator: " ")).map{Int($0)!}
//print(string)
let list = LinkedList<Int>()
for i in string
{
    list.insert(value: i)
}
list.printAllValues()
list.sort()
list.printAllValues()
