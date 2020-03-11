//
//  main.swift
//  BalancedParantheses
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var input = readLine()!                         //  "(5+4)*{6+4}-[5-4]}"
let obj = Balanced()
let result = obj.isBalancedParanthesis(input)
print(result)

