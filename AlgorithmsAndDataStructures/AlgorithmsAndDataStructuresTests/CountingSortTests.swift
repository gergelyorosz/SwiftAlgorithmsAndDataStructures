//
//  InsertionSortTests.swift
//  AlgorithmsAndDataStructures
//
//  Created by Carolyn Johnson on 30/07/2014.
//  Copyright (c) 2014 com.gergelyorosz. All rights reserved.
//

import XCTest
import AlgorithmsAndDataStructures

class CountingSortTests: XCTestCase {
    
    func testSortingAnEmptyArray() {
        SortingTests.testSortingAnEmptyArray(CountingSort.sort)
    }
    
    func testSortingArrayWithOneItem() {
        SortingTests.testSortingArrayWithOneItem(CountingSort.sort)
    }
    
    func testSortingArrayWithTwoItemsInOrder() {
        SortingTests.testSortingArrayWithTwoItemsInOrder(CountingSort.sort)
    }
    
    func testSortingArrayWithTwoItemsInReversedOrder() {
        SortingTests.testSortingArrayWithTwoItemsInReversedOrder(CountingSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsSortedExceptForOne() {
        SortingTests.testSortingArrayWithMultipleItemsSortedExceptForOne(CountingSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsInRandomOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInRandomOrder(CountingSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsInCorrectOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInCorrectOrder(CountingSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsInReverseOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInReverseOrder(CountingSort.sort)
    }
    
    func testSortingArrayWithMultipleMatchingValuesInRandomOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInReverseOrder(CountingSort.sort)
    }
    
}
