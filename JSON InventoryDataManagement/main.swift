//
//  main.swift
//  JSON InventoryDataManagement
//
//  Created by admin on 19/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
let path = "/Users/admin/Desktop/Swift/ObjectOrientedProblems/JSON InventoryDataManagement/files.json"
var myValues:String!
do {
    let data = try NSString(contentsOfFile: path,encoding: String.Encoding.ascii.rawValue)
    myValues = data as String
}
var json:[String: [String:Any]]?
var values:[String] = []
let properties = ["Name","AvailablityOfWeight","PricePerKg"]
let data = Data(myValues.utf8)
do {
    if let jsonn = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
    {
        json = (jsonn as! [String : [String : Any]])
        for i in jsonn.keys
        {
            values.append(i)
        }
    }
}
catch let error as NSError
{
    print("Failed to load: \(error.localizedDescription)")

}
var inventoryAmount = 0
for i in values
{
    var amount = 1
     print(json![i]!["Name"]!)
    for j in properties
    {
        if j != "Name"
        {
            amount = amount * (json![i]![j]! as! Int)
            print("\(j)  : \(json![i]![j]!) ")
        }
    }
    inventoryAmount = inventoryAmount + amount
    print("Total amount of \(i) get by selling : \(amount)")
    print("-----------------------------------------------")
}
print("Total assert in inventory is : \(inventoryAmount)")
