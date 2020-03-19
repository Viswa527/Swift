//
//  main.swift
//  StockManagement
//
//  Created by admin on 19/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
class Stock
{
    var name:String
    var numberOfShares:Int
    var sharePrice:Int
    init(name:String,numberOfShares:Int,sharePrice:Int)
    {
        self.name = name
        self.numberOfShares = numberOfShares
        self.sharePrice = sharePrice
    }
}
class StockPortfolic
{
    var array:[String:Stock] = [:]
    init(){}
    public func value(_ name:String,_ object:Stock)
    {
        array[name] = object
    }
    public func report() -> Int
    {
        var sum = 0
        for i in array.keys
        {
            sum = sum + (array[i]!.sharePrice as! Int) * (array[i]!.numberOfShares as! Int)
        }
        return sum
    }
    
}
var numberOfStock = Int(readLine()!)!
//var objects:[String:Stock] = [:]
let obj = StockPortfolic()
for _ in 0..<numberOfStock
{
    let name = readLine()!
    let numberofshares = Int(readLine()!)!
    let sharePrice = Int(readLine()!)!
    let object = Stock(name: name, numberOfShares: numberofshares, sharePrice: sharePrice)
    obj.value(name,object)
}
print(obj.report())
