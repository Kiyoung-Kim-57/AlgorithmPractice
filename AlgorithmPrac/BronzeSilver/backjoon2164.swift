//
//  backjoon2164.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/11/24.
//

import Foundation
//큐 활용 문제이지만 그리디 알고리즘으로 해결
func backjoon2164() {
    
    let n = Int(readLine()!)!
    var numArr = Array(1...n)
    var isSwitch = true

    while numArr.count != 1 {
        
        var tmp:[Int] = []
        for (idx, num) in numArr.enumerated() {
            if isSwitch {
                if (idx + 1) % 2 == 0 {
                    tmp.append(num)
                }
            } else {
                if (idx + 1) % 2 == 1 {
                    tmp.append(num)
                }
            }
        }
        if numArr.count % 2 != 0 {
            isSwitch.toggle()
        }
        numArr = tmp
    }

    print(numArr[0])
    
}
