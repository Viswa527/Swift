//
//  main.swift
//  ObjectOrientedProblems
//
//  Created by admin on 13/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

let path = "/Users/admin/Desktop/Swift/ObjectOrientedProblems/AddressBook/file.json"
var myValues:String!
do {
    let data = try NSString(contentsOfFile: path,encoding: String.Encoding.ascii.rawValue)
    myValues = data as String
}
let data = Data(myValues.utf8)
var jsonn:Any?
let items = ["Rice","Wheats","Pulse"]

do {
    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
    {
        for nitems in items
        {
            print(json[nitems]!)
        }
    }
}
catch let error as NSError
{
    print("Failed to load: \(error.localizedDescription)")

}

