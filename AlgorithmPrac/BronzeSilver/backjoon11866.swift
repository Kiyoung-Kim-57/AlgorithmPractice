//
//  backjoon11866.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/13/24.
//

import Foundation

func backjoon11866() {
    
    let input = readLine()!.split(separator:" ").map{Int($0)!}
    var numbers = Array(1...input[0])
    var result:[Int] = []
    var point = 0
    while numbers.count > 0 {
        point = (point + input[1] - 1) % numbers.count
        result.append(numbers.remove(at: point))
        
    }

    print("<\(result.map{String($0)}.joined(separator: ", "))>")
    
}
