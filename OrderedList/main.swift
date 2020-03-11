//
//  main.swift
//  OrderedList
//
//  Created by admin on 09/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

let path = "/Users/admin/Desktop/Mytext2.txt" // 5 6 2 3 5 1 9 8 6 4 7 0 10
var myValues:String!
do
{
    let data = try NSString(contentsOfFile: path,encoding: String.Encoding.ascii.rawValue)
    myValues = data as String
}
var string = (myValues.split(separator: " ")).map{Int($0)!}         // geting the data in the form of list by spliting by " "

let list = LinkedList<Int>()
for i in string
{
    list.insert(value: i)                                           // Inserting into the list
}
list.printAllValues()
print(list.length)
list.remove(value:10)
list.printAllValues()
list.insert(value: 27)
print(list.length)
list.remove(value: 99)
print(list.length)
list.sort()
list.printAllValues()
