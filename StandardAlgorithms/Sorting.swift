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
        let array = arrayToSort
        
        if array.count <= 1 {
            return array
        }
        else {
            var smallerArray = [Int]()
            var largerArray = [Int]()
            let pivot = array[0]
            
            for i in 1 ..< array.count {
                if array[i] < pivot {
                    smallerArray.append(array[i])
                }
                else if array[i] > pivot {
                    largerArray.append(array[i])
                }
            }
            return quickSort(smallerArray) + [pivot] + quickSort(largerArray)
        }
    }
    
    func mergeSort(_ arrayToSort: [Int]) -> [Int] {
        let array = arrayToSort
        
        if array.count <= 1 {
            return array
        } else {
            let middleIndex = array.count / 2
            var leftArray = [Int]()
            var rightArray = [Int]()
            
            for i in 0 ..< middleIndex {
                leftArray.append(array[i])
            }
            
            for i in middleIndex ..< array.count {
                rightArray.append(array[i])
            }
            
            let leftSorted = mergeSort(leftArray)
            let rightSorted = mergeSort(rightArray)
            
            return merge(leftSorted, rightSorted)
        }
    }
    
    func merge(_ leftArray: [Int], _ rightArray: [Int]) -> [Int] {
        var leftIndex = 0
        var rightIndex = 0
        var sortedArray = [Int]()
        
        while leftIndex < leftArray.count && rightIndex < rightArray.count {
            if leftArray[leftIndex] < rightArray[rightIndex] {
                sortedArray.append(leftArray[leftIndex])
                leftIndex += 1
            } else {
                sortedArray.append(rightArray[rightIndex])
                rightIndex += 1
                
            }
        }
        
        sortedArray.append(contentsOf: leftArray[leftIndex...])
        sortedArray.append(contentsOf: rightArray[rightIndex...])
        
        return sortedArray
    }
    
    
    func insertionSort(_ array: [Int]) -> [Int] {
        
    }
}


