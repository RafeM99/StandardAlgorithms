//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Marriott, Rafe (NA) on 19/11/2024.
//

import Foundation

class Unknown {
    func sumLastFirstArray(_ array: [Int]) -> Int {
        if array.count == 0 {
            return 0
        }
        else if array.count == 1 {
            return array[0] * 2
        } else {
            let sum = (array[0] + array[(array.count - 1)])
            return sum
        }
    }
    
    func modeSortedArray(_ array: [Int]) -> Int? {
        var mode: Int?
        var number = Int()
        var runningTotal = 0
        var maxTotal = 0
        
        for i in 0 ..< array.count {
            
            let currentNum = array[i]
            
            if currentNum == number {
                runningTotal += 1
                if runningTotal > maxTotal {
                    maxTotal = runningTotal
                    mode = array[i]
                }
            } else {
                number = array[i]
                runningTotal = 1
            }
        }
        return mode
    }
}

