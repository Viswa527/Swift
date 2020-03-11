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
        var hashDic:[Int:[Int]] = [:]
        for _ in 0..<number
        {
            let input = Int(readLine()!)!
            let index = input % slots
            if hashDic[index] == nil
            {
                hashDic[index] = [input]
            }
            else
            {
                var temp:[Int] = hashDic[index]!
                temp.append(input)
                hashDic[index] = temp
            }
        }
        return hashDic
    }
}
