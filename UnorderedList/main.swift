//
//  main.swift
//  DataStructurePrograms
//
//  Created by admin on 06/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

let path = "/Users/admin/Desktop/Mytext.txt" // Welcome to my swift programming world
var findingWord = readLine()!
var myValues:String!
do {
    let data = try NSString(contentsOfFile: path,encoding: String.Encoding.ascii.rawValue)
    myValues = data as String
    print(data)
}
var string = (myValues)!
var array = Array(string.split(separator: " "))
var myList = LinkedList<String>()
for i in array
{
    myList.insert(value:i)
}
myList.printAllKeys()
