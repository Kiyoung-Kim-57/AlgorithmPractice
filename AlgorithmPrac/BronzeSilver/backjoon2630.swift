//
//  backjoon2630.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/20/24.
//

import Foundation

func backjoon2630() {
    let n = Int(readLine()!)!
    var matrix: [[Int]] = []
    var result = [0,0]

    for i in 0..<n {
        let line = readLine()!.split(separator: " ").map{Int($0)!}
        matrix.append(line)
    }

    func check(x: Int, y: Int, range: Int) {
        var isTrue = true
        var first = matrix[y][x]
    firstLoop: for i in y..<y+range {
            for j in x..<x+range {
                if matrix[i][j] != first {
                    isTrue = false
                    break firstLoop
                }
            }
        }
        
        if isTrue {
            result[first] += 1
        } else {
            var tmp = range / 2
            for i in 0..<2 {
                for j in  0..<2 {
                    check(x: x + j * tmp, y: y + i * tmp, range: tmp)
                }
            }
        }
    }
    check(x: 0, y: 0, range: matrix.count)

    for value in result {
        print(value)
    }
}
