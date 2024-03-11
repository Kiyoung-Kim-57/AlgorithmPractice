//
//  backjoon1181.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/7/24.
//

import Foundation

let n = Int(readLine()!)!
var set = Set<String>()
var result:[String] = []
for _ in 0..<n {
    let input = readLine()!
    result.append(input)
}
set = Set(result)
result = Array(set)
result = result.sorted(by: { $0 < $1 }).sorted(by: {$0.count < $1.count})

for input in result {
    print(input)
}
