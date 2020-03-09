//
//  main.swift
//  DataStructurePrograms
//
//  Created by admin on 06/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

let path = "/Users/admin/Desktop/Mytext.txt"
var myValues:String!
do {
    let data = try NSString(contentsOfFile: path,encoding: String.Encoding.ascii.rawValue)
    myValues = data as String
    print(data)
}
var string = (myValues)!
var array = string.split(separator: " ")
print(array)


