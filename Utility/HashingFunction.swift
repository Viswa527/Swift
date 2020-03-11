//
//  HashingFunction.swift
//  Utility
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
class HashFunction
{
    public func Hashfunction(_ number:Int,_ slot:Int) -> [Int:[Int]]
    {
        var hashDic:[Int:[Int]] = [:]           // creating a new dictionary
        for _ in 0..<number                     // loopind according to user input numbers
        {
            let input = Int(readLine()!)!
            let index = input % slot
            if hashDic[index] == nil
            {
                hashDic[index] = [input]
            }
            else
            {
                var temp:[Int] = hashDic[index]!    // stored through the indexes
                temp.append(input)
                hashDic[index] = temp
            }
        }
        return hashDic
    }
}
