//
//  backjoon1620.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/14/24.
//

import Foundation

func backjoon1620() {
    
    let n = readLine()!.split(separator: " ").map{Int($0)!}
    var dict: [Int: String] = [:]
    var dict2: [String: Int] = [:]
    var count = 1
    for i in 1...n[0] {
        let input = readLine()!
        dict.updateValue(input, forKey: count)
        dict2.updateValue(count, forKey: input)
        count += 1
    }
    for j in 1...n[1] {
        let input = readLine()!
        if let num = Int(input) {
            print(dict[num]!)
        } else {
            print(dict2[input]!)
        }
    }
    
}
