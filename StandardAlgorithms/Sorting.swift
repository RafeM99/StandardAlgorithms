//
//  File.swift
//  StandardAlgorithms
//
//  Created by Marriott, Rafe (NA) on 05/11/2024.
//

import Foundation

class Sorting {
    func bubbleSort(_ array: [Int]) -> [Int] {
//        for i in 0 ..< array.count {
//            if array[i] > array[i+1] {
//                array[i] = array[i+1]
//                array[i+1] = array[i]
//            }
//            
//            return array
        
        return [0]
    }
    
    func quickSort(_ arrayToSort: [Int]) -> [Int] {
        var array = arrayToSort
        
        if array.count == 1 {
            return array
        }
        else {
            var smallerArray = [Int]()
            var largerArray = [Int]()
            var pivot = array[0]
            
            for i in 1 ..< array.count {
                if array[i] < pivot {
                    smallerArray.append(array[i])
                }
                else if array[i] > pivot {
                    largerArray.append(array[i])
                }
                    
                array = quickSort(smallerArray)ç
        }
            
      
            }
        }
        
    }
}
