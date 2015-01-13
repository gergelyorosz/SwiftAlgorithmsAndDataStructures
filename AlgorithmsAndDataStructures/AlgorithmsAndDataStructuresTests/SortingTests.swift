//
//  SortingTests.swift
//  AlgorithmsAndDataStructures
//
//  Created by Carolyn Johnson on 30/07/2014.
//  Copyright (c) 2014 com.gergelyorosz. All rights reserved.
//

import Foundation
import XCTest

class SortingTests
{
    class func testSortingAnEmptyArray(sortMethod: (inout [Int])->Void) {
        testSortingOnArrays([],
            expectedResult: [],
            sortMethod: sortMethod)
    }
    
    class func testSortingArrayWithOneItem(sortMethod: (inout [Int])->Void) {
        testSortingOnArrays([1],
            expectedResult: [1],
            sortMethod: sortMethod)
    }
    
    class func testSortingArrayWithTwoItemsInOrder(sortMethod: (inout [Int])->Void) {
        testSortingOnArrays([1, 2],
            expectedResult: [1, 2],
            sortMethod: sortMethod)
    }
    
    class func testSortingArrayWithTwoItemsInReversedOrder(sortMethod: (inout [Int])->Void) {
        testSortingOnArrays([2, 1],
            expectedResult: [1, 2],
            sortMethod: sortMethod)
    }
    
    class func testSortingArrayWithMultipleItemsSortedExceptForOne(sortMethod: (inout [Int])->Void) {
        testSortingOnArrays([1, 2, 3, 5, 4, 6, 7, 8],
            expectedResult: [1, 2, 3, 4, 5, 6, 7, 8],
            sortMethod: sortMethod)
    }
    
    class func testSortingArrayWithMultipleItemsInRandomOrder(sortMethod: (inout [Int])->Void) {
        testSortingOnArrays([6, 1, 3, 5, 2, 8, 7, 4],
            expectedResult: [1, 2, 3, 4, 5, 6, 7, 8],
            sortMethod: sortMethod)
    }
    
    class func testSortingArrayWithMultipleItemsInCorrectOrder(sortMethod: (inout [Int])->Void) {
        testSortingOnArrays([1, 2, 3, 4, 5, 6, 7, 8],
            expectedResult: [1, 2, 3, 4, 5, 6, 7, 8],
            sortMethod: sortMethod)
    }
    
    class func testSortingArrayWithMultipleItemsInReverseOrder(sortMethod: (inout [Int])->Void) {
        testSortingOnArrays([8, 7, 6, 5, 4, 3, 2, 1],
            expectedResult: [1, 2, 3, 4, 5, 6, 7, 8],
            sortMethod: sortMethod)
    }

    class func testSortingArrayWithMultipleMatchingValuesInRandomOrder(sortMethod: (inout [Int])->Void) {
        testSortingOnArrays([6, 1, 1, 3, 5, 3, 2, 8, 7, 4, 5],
            expectedResult: [1, 1, 2, 3, 3, 4, 5, 5, 6, 7, 8],
            sortMethod: sortMethod)
    }
    
    class func testSortingOnArrays(array: inout [Int], expectedResult: [Int], sortMethod: (inout [Int])->Void) {
        var mutableArray = array
        sortMethod(&mutableArray)
        expectArraysEqual(mutableArray, arrayToCompareWith: expectedResult)
    }
    
    class func expectArraysEqual(array: [Int], arrayToCompareWith: [Int]) {
        XCTAssertEqual(array.count, arrayToCompareWith.count)
        for(var i=0; i < array.count; i++) {
            println("comparing \(array[i]) with \(arrayToCompareWith[i])")
            XCTAssertEqual(array[i], arrayToCompareWith[i])
        }
    }
}