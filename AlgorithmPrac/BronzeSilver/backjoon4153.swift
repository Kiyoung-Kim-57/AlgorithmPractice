//
//  backjoon4153.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/7/24.
//

import Foundation

func backjoon4153() {
    
    while let input = readLine(), input != "0 0 0" {
        let numbers = input.split(separator:" ").map{Double($0)! * Double($0)!}.sorted(by: >)
        print( numbers[0] == numbers[1] + numbers[2] ? "right" : "wrong"  )
    }
    
}



