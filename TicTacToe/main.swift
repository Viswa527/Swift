//
//  main.swift
//  TicTacToe
//
//  Created by admin on 05/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
class Tic
{
    public static var array:[String] = [" "," "," "," "," "," "," "," "," "]
    
    public static func input(_ value:Int,_ symbol:String)
    {
        self.array[value - 1] = symbol
    }
    
    public static func check(_ number:Int) -> Bool
    {
       if array[number - 1] != "X" &&  array[number - 1] != "O"
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    public static func board()
    {
        print("---------")
        print("\(array[0]) , \(array[1]) , \(array[2])")
        print("---------")
        print("\(array[3]) , \(array[4]) , \(array[5])")
        print("---------")
        print("\(array[6]) , \(array[7]) , \(array[8])")
        print("---------")
    }
    
    public static func checkWin(_ symbol:String) -> Bool
    {
        let string = symbol+symbol+symbol
        if array[0] + array[1] + array[2] == string ||
            array[3] + array[4] + array[5] == string ||
            array[6] + array[7] + array[8] == string ||
            array[0] + array[3] + array[6] == string ||
            array[1] + array[4] + array[7] == string ||
            array[2] + array[5] + array[8] == string ||
            array[0] + array[4] + array[8] == string ||
            array[2] + array[4] + array[6] == string
        {
            return true
        }
        else
        {
            return false
        }
    }
}
public var count:Int = 0

var symbol = "X"
func player()
{
        Tic.board()
        print("Player 1's Turn : ")
        var number = Int(readLine()!)!
        while (number <= 9 && number >= 1 && Tic.check(number) == true) != true
        {
            number = Int(readLine()!)!
        }
       Tic.input(number, symbol)
       count = count + 1
        if Tic.checkWin(symbol) == false
        {
            symbol = "O"
            if count != 9
            {
                return player2()
            }
            else
            {
                print("!.....DRAW......!")
            }
        }
        else
        {
            print("!....Player1 wins.......!")
        }
}
func player2()
{
        Tic.board()
        print("Player 2's Turn : ")
        var number = Int(readLine()!)!
        while (number <= 9 && number >= 1 && Tic.check(number) == true) != true
        {
            number = Int(readLine()!)!
        }
        count = count + 1
        Tic.input(number, symbol)
        if Tic.checkWin(symbol) == false
        {
            symbol = "X"
            if count != 9
                
            {
            return player()
            }
            else
            {
                print("!.....DRAW......!")
            }
        }
        else
        {
            print("!.....Player2 wins.....!")
        }
    
}
if Bool.random() == true
{
    print("Player 1 starts first symbol is : X")
    player()
}
else
{
    print("Player 2 starts first symbol is : O")
    player2()
}
