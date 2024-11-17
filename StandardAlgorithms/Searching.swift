//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Marriott, Rafe (NA) on 07/11/2024.
//

import Foundation

class Searching {
    func binarySearch(_ array: [Int], _ item: Int) -> Int {
        var found = false
        var index = 0
        
        while found == false {
            if array[index] == item {
                found = true
            }
        }
        if found == true {
            return index
        } else {
            return -1
        }
    }
}
