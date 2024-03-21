//
//  backjoon2606.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/19/24.
//

import Foundation

func backjoon2606(){
    
    let n = Int(readLine()!)!
    let lineCount = Int(readLine()!)!
    var dict:[Int:[Int]] = [1:[]]
    if lineCount != 0 {
        for _ in 1...lineCount {
            let input = readLine()!.split(separator:" ").map{Int($0)!}
            dict[input[0], default: []].append(input[1])
            dict[input[1], default: []].append(input[0])
            
        }
    }

    func dfs(dict: [Int: [Int]]) {
        var needToVisit = dict[1]!
        var visitedQueue:[Int] = [1]
        var node = 0
        while !needToVisit.isEmpty {
            node = needToVisit.removeLast()
            if !visitedQueue.contains(node) {
                needToVisit += dict[node]!
                visitedQueue.append(node)
            } else {
                continue
            }
        }
        print(Set(visitedQueue).count - 1)
        print(visitedQueue.description)
    }

    dfs(dict: dict)

}
