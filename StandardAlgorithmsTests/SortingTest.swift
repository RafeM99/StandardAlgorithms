//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Marriott, Rafe (NA) on 05/11/2024.
//

import Testing
@testable import StandardAlgorithms

struct SortingTest {

    @Test func testingBubbleSortBasics() async throws {
        //arrange
        let sorting = Sorting()
        var shuffledArray = [4,2,8,9,5]
        //act
        let result = sorting.bubbleSort(shuffledArray)
        //assert
        #expect(result == [2,4,5,8,9])
    }
    
    @Test("Testing Parameterised bubble sort", arguments: zip([[4,2,8,9,5],[8,2,7,10,0]],[[2,4,5,8,9],[0,2,7,8,10]]))
    func bubbleSortWithVariousArrays(numbersToSort: [Int], expected: [Int]) async throws {
        //arrange
        let sorting = Sorting()
        //act
        let result = sorting.bubbleSort(numbersToSort)
        //assert
        #expect(result == expected)
    }

}
