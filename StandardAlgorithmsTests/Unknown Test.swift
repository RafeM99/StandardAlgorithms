//
//  Unknown Test.swift
//  StandardAlgorithmsTests
//
//  Created by Marriott, Rafe (NA) on 19/11/2024.
//

import Testing
@testable import StandardAlgorithms

struct Unknown_Test {

    @Test("Testing sum of first and last items in arrays", arguments: zip([[6,3,8,7,2], [], [5]], [8, 0, 10]))
    func testSumOfFirstAndLastItemsInAnArray(array: [Int], expected: Int) async throws {
        //arrange
        let unknown = Unknown()
        //act
        let result = unknown.sumLastFirstArray(array)
        //assert
        #expect(result == expected)
    }
    
    @Test("Testing mode of arrays", arguments: zip([[2,4,4,7,8], [4,5,6,7,9]], [4, nil]))
    func testModeOfSortedIntegerArray(array: [Int], expected: Int?) {
        //arrange
        let unknown = Unknown()
        //act
        let result = unknown.modeSortedArray(array)
        //assert
        #expect(result == expected)
    }
    
    @Test("Testing second smallest value in arrays", arguments: zip([[5,2,7,4,6], [7,8,2,3,1]], [4, 2]))
    func testFindSecondSmallestValueInUnsortedArray(array: [Int], expected: Int?) {
        
    }
}
