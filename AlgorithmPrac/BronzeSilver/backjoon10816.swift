//
//  backjoon10816.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/12/24.
//

import Foundation

func backjoon10816(){
    let n = Int(readLine()!)!
    let numbers = readLine()!.split(separator: " ").map{Int($0)!}
    var dict: [Int:Int] = [:]
    for num in numbers {
        if let check = dict[num] {
            dict[num] = check + 1
        } else { dict.updateValue(1, forKey: num) }
    }
    var numberSet = Set(dict.keys)
    let m = Int(readLine()!)!
    var numberToCompare = readLine()!.split(separator: " ").map{Int($0)!}
    var result = numberToCompare.map{
        if numberSet.contains($0) {
            return String(dict[$0]!)
        } else {
            return String(0)
        }
    }

    print(result.joined(separator: " "))
}
