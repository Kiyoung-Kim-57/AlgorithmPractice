//
//  backjoon1010.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/21/24.
//

import Foundation

func backjoon1010() {
    let cases = Int(readLine()!)!

    for _ in 0..<cases {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        let maxN = input[1]
        let r = input[0]
        var array = [Int](repeating: 0, count: maxN+1)
        
        
        for n in r..<maxN+1 {
            if n == r {
                array[n] = 1
            } else {
                array[n] = (array[n - 1] * n) / (n - r)
            }
        }
        print(array[maxN])
    }

}
