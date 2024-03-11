//
//  backjoon1920.swift
//  AlgorithmPrac
//
//  Created by 김기영 on 3/11/24.
//
//이진탐색
import Foundation

func backjoon1920() {
    
    let n = Int(readLine()!)!
    let aArray = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
    let m = Int(readLine()!)!
    let mArray = readLine()!.split(separator: " ").map{ Int($0)!}

    //func binarySearch(_ number: Int, array: [Int]) -> Int {
    //    var mid = array.count / 2
    //
    //    if array.count == 1 {
    //        return array[0] == number ? 1 : 0
    //    }
    //
    //    if number == array[mid] {
    //        return 1
    //    } else if number < array[mid] {
    //        return binarySearch(number, array: Array(array[..<mid]))
    //    } else {
    //        return binarySearch(number, array: Array(array[mid...]))
    //    }
    //}
    //왜 시간 초과가 날까..
    func binarySearch(_ number: Int, array: [Int]) -> Int {
        var mid = array.count / 2
        var start = 0
        var end = array.count - 1
        
        
        while start <= end {
            if number == array[mid] {
                return 1
            } else if number < array[mid] {
                end = mid - 1
                mid = (start + end) / 2
            } else if number > array[mid] {
                start = mid + 1
                mid = (start + end) / 2
            }
        }
        return 0
    }


    for number in mArray {
        print(binarySearch(number, array: aArray))
    }

    
}
