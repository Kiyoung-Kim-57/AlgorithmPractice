//
//  backjoon1463.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/21/24.
//

import Foundation

func backjoon1463() {
    let input = Int(readLine()!)!
    var array = [Int](repeating: 0 , count: input + 1)

    for i in 2...input {
        var tmp = array[i - 1] + 1
        if i % 3 == 0 {
            array[i] = min(tmp, array[i/3] + 1)
        } else if i % 2 == 0 {
            array[i] = min(tmp, array[i/2] + 1)
        } else {
            array[i] = tmp
        }
    }

    print(array[input])

    
}
