//
//  main.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/4/24.
//
//
//let input = readLine()!.components(separatedBy: " ").map({ String($0) })
//
//let num1 = NSDecimalNumber(string: input[0])
//let num2 = NSDecimalNumber(string: input[1])
//let quo = num1.dividing(by: num2).rounding(accordingToBehavior: NSDecimalNumberHandler(roundingMode: .down, scale: 0, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: false))
//let remainder = num1.subtracting(num2.multiplying(by: quo))
//let multi = num2.multiplying(by: quo)
//print(quo)
//print(remainder)
//print(multi)

import Foundation

//let n = Double(readLine()!)!
//let scores = readLine()!.split(separator: " ").map{ Double($0)! }
//let max = scores.max()!
//let avr = scores.map{ $0 / max * 100 }
//print(scores.map{ $0 / max * 100 }.reduce(0, {$0 + $1}) / n)
//print(scores.description)
//print(max)
//print(avr.description)
//print(scores.map{ $0 / max * 100 }.reduce(0, +) / n)

//while let input = readLine(), input != "0" {
//    print(Array(input) == Array(input).reversed() ? print("yes") : print("no"))
//}
//let a = [1,2,3]
//let ab = "dddd"
//print(ab.count)
//let numbers = readLine()!.split(separator:" ").map{Int($0)!}.sorted(by: >)
//print( numbers[0] == pow(numbers[1]) + pow(numbers[2]) ? "right" : "wrong"  )

let n = readLine()!.split(separator: " ").map{Int($0)!}
let rows = n[1]
let column = n[0]

var boards:[[Character]] = []
for i in 0..<column {
    let input = String(readLine()!)
    boards.append(Array(input))
}


var result = 64

for i in 0..<(column - 7) {
    for j in 0..<(rows - 7) {
        var countBStart = 0
        var countWStart = 0
        
        for col in i...(i+7) {
            for rw in j...(j+7) {
                if (col + rw) % 2 == 0 {
                    if boards[col][rw] == "B" {
                        countWStart += 1
                    } else {
                        countBStart += 1
                    }
                } else {
                    if boards[col][rw] == "B" {
                        countBStart += 1
                    } else {
                        countWStart += 1
                    }
                }
            }
        }
        
        result = min(countBStart, countWStart, result)
    }
}

print(result)

