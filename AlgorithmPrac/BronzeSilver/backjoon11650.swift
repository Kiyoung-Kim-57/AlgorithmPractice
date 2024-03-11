//
//  backjoon11650.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/11/24.
//

import Foundation

func backjoon11650() {
    
    let n = Int(readLine()!)!
    var matrix: [[Int]] = []
    for i in 1...n {
        matrix.append(readLine()!.split(separator:" ").map{Int($0)!})
    }

    matrix = matrix.sorted(by: { $0[1] < $1[1] }).sorted(by: { $0[0] < $1[1] })
    //matrix.sort(by: { a,b in
    //    if a[0] == b[0] {
    //        return a[1] < b[1]
    //    } else {
    //        return a[0] < b[1]
    //    }
    //})
    for value in matrix {
        print("\(value[0]) \(value[1])")
    }
    
}
