//
//  backjoon11050.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/7/24.
//

import Foundation

func backjoon11050() {
    
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    var numerator: Int = 1
    var denominator: Int = 1
    if input[1] == 0 {
        print(1)
    } else {
        for i in 1...input[1] {
            numerator *= input[0] - i + 1
            denominator *= i
        }
        print(numerator/denominator)
    }
    
}
