//
//  backjoon1018.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/11/24.
//

import Foundation
func backjoon1018() {
    
    
    let n = readLine()!.split(separator: " ").map{Int($0)!}
    let rows = n[1]
    let column = n[0]
    
    var boards:[[Character]] = []
    for i in 0..<column {
        let input = String(readLine()!)
        boards.append(Array(input))
    }
    
    
    var result = 64
    
    for i in 0..<(column - 7) {
        for j in 0..<(rows - 7) {
            var countBStart = 0
            var countWStart = 0
            
            for col in i...(i+7) {
                for rw in j...(j+7) {
                    if (col + rw) % 2 == 0 {
                        if boards[col][rw] == "B" {
                            countWStart += 1
                        } else {
                            countBStart += 1
                        }
                    } else {
                        if boards[col][rw] == "B" {
                            countBStart += 1
                        } else {
                            countWStart += 1
                        }
                    }
                }
            }
            
            result = min(countBStart, countWStart, result)
        }
    }
    
    print(result)
}
