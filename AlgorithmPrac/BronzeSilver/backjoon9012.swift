//
//  backjoon9012.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/12/24.
//

import Foundation

func backjoon9012() {
    
    let n = Int(readLine()!)!

    for i in 1...n {
        let input = Array(readLine()!)
        var leftCount = 0
        var rightCount = 0
        for (idx,chr) in input.enumerated() {
            if idx == 0 {
                if chr == ")" {
                    rightCount += 1
                    break
                } else {
                    leftCount += 1
                }
            } else {
                if chr == ")" {
                    rightCount += 1
                    if leftCount < rightCount {
                        break
                    }
                } else {
                    leftCount += 1
                }
            }
        }
        if leftCount == rightCount {
            print("Yes")
        } else {
            print("No")
        }
    }

}
