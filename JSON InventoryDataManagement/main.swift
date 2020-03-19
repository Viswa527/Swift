//
//  main.swift
//  JSON InventoryDataManagement
//
//  Created by admin on 19/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

let objItems = Items()
let path = "/Users/admin/Desktop/Swift/ObjectOrientedProblems/JSON InventoryDataManagement/file.json"
var myValues:String!
do {
    let data = try NSString(contentsOfFile: path,encoding: String.Encoding.ascii.rawValue)
    myValues = data as String
}
let data = Data(myValues.utf8)
do {
    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
    {
        print(json)
    }
}
catch let error as NSError
{
    print("Failed to load: \(error.localizedDescription)")

}
