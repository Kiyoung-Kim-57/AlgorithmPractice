//
//  backjoon1003.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/14/24.
//

import Foundation

func backjoon1003() {
    
    let n = Int(readLine()!)!
    for i in 1...n {
        let input = Int(readLine()!)!
        var arrayZero = Array(repeating: 0, count: input + 1)
        var arrayOne = Array(repeating: 0, count: input + 1)
        for j in 0...input {
            if j == 0 {
                arrayZero[0] += 1
            } else if j == 1 {
                arrayOne[1] += 1
            } else {
                arrayZero[j] = arrayZero[j - 1] + arrayZero[j - 2]
                arrayOne[j] = arrayOne[j - 1] + arrayOne[j - 2]
            }
            
        }
        print("\(arrayZero[arrayZero.count - 1]) \(arrayOne[arrayOne.count - 1])")
    }
    
}
