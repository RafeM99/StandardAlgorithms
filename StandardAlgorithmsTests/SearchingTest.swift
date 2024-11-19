//
//  Searching.swift
//  StandardAlgorithmsTests
//
//  Created by Marriott, Rafe (NA) on 07/11/2024.
//

import Testing
@testable import StandardAlgorithms

struct SearchingTest {

    @Test("Testing Parameterised linear search", arguments: [(arrayToSearch: [2,4,5,7,8], itemToFind: 4, expectedIndex: 1), (arrayToSearch: [1,5,6,8,9], itemToFind: 8, expectedIndex: 3)])
    func linearSearchWithVariousItems(arrayToSearch: [Int], itemToFind: Int, expectedIndex: Int) async throws {
        //arrange
        let searching = Searching()
        //act
        let result = searching.linearSearch(arrayToSearch, itemToFind)
        //assert
        #expect(result == expectedIndex)
    }
    
    @Test("Testing Parameterised binary search", arguments: [(arrayToSearch: [2,4,5,7,8], itemToFind: 4, expectedIndex: 1), (arrayToSearch: [1,5,6,8,9], itemToFind: 8, expectedIndex: 3)])
    func binarySearchWithVariousItems(arrayToSearch: [Int], itemToFind: Int, expectedIndex: Int) async throws {
        //arrange
        let searching = Searching()
        //act
        let result = searching.binarySearch(arrayToSearch, itemToFind)
        //assert
        #expect(result == expectedIndex)
    }

}
