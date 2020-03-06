//
//  main.swift
//  Vending Machine
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var notes = [1000,500,100,50,10,5,2,1]              // by default Notes are defined
var amount = Int(readLine()!)!                      // Cash is entered
var index = 0                                       // initialized to iterate through notes
while amount != 0
{
    if amount/notes[index] != 0
    {
        let numberOfNotes = amount/notes[index]           // to show how many notes required to get
        let debited = notes[index]*numberOfNotes          // amount that debits everytime u find notes
        amount = amount-debited                 // amount should be updated every time when u debit the money
        print("\(notes[index]) * \(numberOfNotes) = \(debited)")
    }
    index = index+1
}
