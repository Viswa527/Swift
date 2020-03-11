//
//  main.swift
//  BalancedParantheses
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var input = "(5+4)*{6+4}-[5-4]}"
var array:[String]=[]
for i in input
{
    if "[{()}]".contains(String(i))
    {
        array.append(String(i))
    }
}
let obj = Balanced()
let result = obj.isBalancedParanthesis(array)
print(result)

