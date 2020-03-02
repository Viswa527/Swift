//
//  main.swift
//  Vending Machine
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var notes = [1000,500,100,50,10,5,2,1]
var amount = 4965
var i = 0
while amount != 0
{
    if amount/notes[i] != 0
    {
        let noNotes = amount/notes[i]
        let ok = notes[i]*noNotes
        amount = amount-ok
        print("\(notes[i]) * \(noNotes) = \(ok)")
    }
    i=i+1
}
