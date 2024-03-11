//
//  backjoon10814.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/11/24.
//

import Foundation

func backjoon10814() {
    
    let n = Int(readLine()!)!
    var names: [[String]] = []
    for i in 1...n {
        let input = readLine()!.split(separator:" ").map{String($0)}
        names.append(input)
    }
    names.sort(by: {Int($0[0])! < Int($1[0])!})

    for name in names {
        print("\(name[0]) \(name[1])")
    }

}
