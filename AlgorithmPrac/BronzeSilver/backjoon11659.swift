//
//  unknown.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/18/24.
//
//
//import Foundation

func backjoon11659() {
    let n = readLine()!.split(separator: " ").map{Int($0)!}
    var sum = 0
    let numbers = readLine()!.split(separator: " ").map{ (a) -> Int in
        sum += Int(a)!
        return sum
    }

    for i in 1...n[1] {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        let totalSum = numbers[input[1] - 1]
        let sumToSubtract = input[0] > 1 ? numbers[input[0] - 2] : 0
        print(totalSum - sumToSubtract)
    }
}

