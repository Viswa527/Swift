//
//  main.swift
//  ObjectOrientedProblems
//
//  Created by admin on 13/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
class Rice
{
    var name:String?
    var weight:Int?
    var price:Int?
    init() {}
    init(name:String,weight:Int,price:Int)
    {
        self.name = name
        self.weight = weight
        self.price = price
    }
}
class Wheat
{
    var name:String?
    var weight:Int?
    var price:Int?
    init() {}
    init(name:String,weight:Int,price:Int)
    {
        self.name = name
        self.weight = weight
        self.price = price
    }
}
class Pulse
{
    var name:String?
    var weight:Int?
    var price:Int?
    init() {}
    init(name:String,weight:Int,price:Int)
    {
        self.name = name
        self.weight = weight
        self.price = price
    }
}
class Items
{
    var rice = Rice()
    var wheat = Wheat()
    var pulse = Pulse()
}

let objItems = Items()
let path = "/Users/admin/Desktop/Swift/ObjectOrientedProblems/AddressBook/file.json"
var myValues:String!
do {
    let data = try NSString(contentsOfFile: path,encoding: String.Encoding.ascii.rawValue)
    myValues = data as String
}
let data = Data(myValues.utf8)
var jsonn:Any?
let items = ["rice","wheats","pulse"]

do {
    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
    {
        jsonn = json
    }
}
catch let error as NSError
{
    print("Failed to load: \(error.localizedDescription)")
}

