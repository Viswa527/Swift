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
    let data = try NSString(contentsOfFile: path,encoding: String.Encoding.ascii.rawValue)      // to read text file
    myValues = data as String                                                         // data will be converted into String format
    print(data)                                                                       // prints text as a string
}
var string = (myValues)!                                                              // unwrapping the data
var array = Array(string.split(separator: " "))                                       // spliting word by word with repective of space
var list = LinkedList<String>()                                                        // creating object to class
for i in array
{
    if findingWord !=  String(i)                                                        // checking the string
    {
        list.insert(value: String(i))                                                   // inserting into list
    }
    else
    {
        list.remove(value: findingWord)                                                // removing the the element if we found
    }
}
list.printAllKeys()
