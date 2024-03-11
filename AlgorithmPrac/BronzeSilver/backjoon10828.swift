//
//  backjoon10828.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/11/24.
//

import Foundation
//Stack

func backjoon10828() {
    
    struct Stack<T> {
        public var stackArr: [T] = []
        public mutating func push(_ number: T) {
            stackArr.append(number)
        }
        public mutating func pop() {
            if stackArr.isEmpty {
                print(-1)
            } else {
                print(stackArr.removeLast())
            }
        }
        public func size() {
            print(stackArr.count)
        }
        public func empty() {
            if stackArr.isEmpty {
                print(1)
            } else {
                print(0)
            }
        }
        public func top() {
            if stackArr.isEmpty {
                print(-1)
            } else {
                print(stackArr[stackArr.count - 1])
            }
        }
    }
    var SampleStack = Stack<Int>()
    let n = Int(readLine()!)!

    for _ in 1...n {
        let input = readLine()!.split(separator: " ").map{ String($0)}
        switch input[0] {
        case "push":
            SampleStack.push(Int(input[1])!)
        case "pop":
            SampleStack.pop()
        case "size":
            SampleStack.size()
        case "empty":
            SampleStack.empty()
        case "top":
            SampleStack.top()
        default:
            print("error")
        }
    }

}
