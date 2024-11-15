//
//  Searching.swift
//  StandardAlgorithmsTests
//
//  Created by Marriott, Rafe (NA) on 07/11/2024.
//

import Testing
@testable import StandardAlgorithms

struct SearchingTest {

    @Test("Testing Parameterised binary search", arguments: zip([[1,2,3,4,5]]))
    func binarySearchWithVariousItems(array: [Int], itemToFind: Int) async throws {
        //arrange
        let searching = Searching()
        //act
        let result = searching.binarySearch()
        //assert
    }

}
