//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Marriott, Rafe (NA) on 07/11/2024.
//

import Foundation

class Searching {
    func linearSearch(_ array: [Int], _ item: Int) -> Int {
        var found = false
        var index = 0
        
        while found == false {
            if array[index] == item {
                found = true
            }
            else {
                index += 1
            }
        }
        if found == true {
            return index
        } else {
            return -1
        }
    }
    
    func binarySearch(_ array: [Int], _ item: Int) -> Int {
        var found = false
        var left = 0
        var right = array.count - 1
        
        while left <= right {
            let mid = (left + right) / 2
            
            if array[mid] == item {
                found = true
                return mid
            }
            else if array[mid] < item  {
                left = mid + 1
            }
            else {
                right = mid - 1
            }
        }
        if found == false {
            return -1
        }
    }
}
