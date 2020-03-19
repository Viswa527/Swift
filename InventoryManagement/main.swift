//
//  main.swift
//  InventoryManagement
//
//  Created by admin on 19/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
struct Gloceries :Codable
{
    var item:String
    var availablity:String
    var pricePerKg:String
}

let path = "/Users/admin/Desktop/Swift/ObjectOrientedProblems/InventoryManagement/myFile.json"
let myJson:String!
do{
    let data = try! NSString(contentsOfFile: path, encoding: String.Encoding.ascii.rawValue)
    myJson = data as String
}
let dat = myJson!.data(using: .utf8)!
let user = try! JSONDecoder().decode(Gloceries.self, from: dat)
print(user.item)


