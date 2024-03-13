//
//  backjoon10866.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/13/24.
//

import Foundation


func backjoon10866() {
    
    struct stackQueue {
        var enqueue:[Int] = []
        var dequeue:[Int] = []
        
        mutating func push(_ el: Int) {
            enqueue.append(el)
        }
        
        mutating func pushFront(_ el: Int) {
            if enqueue.isEmpty {
                enqueue.append(el)
            } else {
                dequeue = enqueue.reversed()
                dequeue.append(el)
                enqueue = dequeue.reversed()
            }
        }
        
        mutating func pop() -> Int {
            if enqueue.isEmpty {
                return -1
            } else {
                dequeue = enqueue.reversed()
                var tmp = dequeue.popLast()
                enqueue = dequeue.reversed()
                return tmp!
            }
        }
        
        mutating func popBack() -> Int {
            if enqueue.isEmpty {
                return -1
            } else {
                return enqueue.popLast()!
            }
        }
        
        func size() -> Int {
            return enqueue.count
        }
        
        func empty() -> Int {
            return enqueue.isEmpty ? 1 : 0
        }
        
        func front() -> Int {
            return enqueue.isEmpty ? -1 : enqueue[0]
        }
        
        func back() -> Int {
            return enqueue.isEmpty ? -1 : enqueue[enqueue.count - 1]
        }
    }

    var queue = stackQueue()
    let n = Int(readLine()!)!
    for i in 1...n {
        let input = readLine()!.split(separator: " ").map{String($0)}
        switch input[0] {
            case "push_back":
            queue.push(Int(input[1])!)
            case "push_front":
            queue.pushFront(Int(input[1])!)
            case "pop_front":
            print(queue.pop())
            case "pop_back":
            print(queue.popBack())
            case "size":
            print(queue.size())
            case "empty":
            print(queue.empty())
            case "front":
            print(queue.front())
            case "back":
            print(queue.back())
            default: print("error")
        }
    }
    
}
