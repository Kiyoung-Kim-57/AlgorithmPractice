//
//  backjoon1012.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/18/24.
//

import Foundation

func backjoon1012() {
    let cases = Int(readLine()!)!
    let dx = [1, -1, 0 ,0]
    let dy = [0, 0, 1, -1]

    for i in 1...cases {
        let input = readLine()!.split(separator:" ").map{Int($0)!}
        let m = input[0]
        let n = input[1]
        let k = input[2]
        var matrix = [[Int]](repeating:[Int](repeating: 0, count: m), count: n)
        var count = 0
        
        for j in 0..<k {
            let xy = readLine()!.split(separator:" ").map{Int($0)!}
            let x = xy[0]
            let y = xy[1]
            matrix[y][x] = 1
        }
        
        func dfs(x: Int, y: Int){
            if x >= 0 && x < m && y >= 0 && y < n {
                if matrix[y][x] == 1 {
                   matrix[y][x] = 0
                   for i in 0..<4 {
                       dfs(x: x + dx[i], y: y + dy[i])
                   }
                } else {
                  return
                }
            }
        }
        
        for a in 0..<n {
            for b in 0..<m {
                if matrix[a][b] == 1 {
                dfs(x: b, y: a)
                count += 1
                }
            }
        }
        print(count)
    }

}
