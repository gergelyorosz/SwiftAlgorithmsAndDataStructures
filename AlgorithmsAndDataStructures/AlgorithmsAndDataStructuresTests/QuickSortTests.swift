//
//  InsertionSortTests.swift
//  AlgorithmsAndDataStructures
//
//  Created by Carolyn Johnson on 30/07/2014.
//  Copyright (c) 2014 com.gergelyorosz. All rights reserved.
//

import XCTest
import AlgorithmsAndDataStructures

class QuickSortTests: XCTestCase {
    
    func testSortingAnEmptyArray() {
        SortingTests.testSortingAnEmptyArray(QuickSort.sort)
    }
    
    func testSortingArrayWithOneItem() {
        SortingTests.testSortingArrayWithOneItem(QuickSort.sort)
    }
    
    func testSortingArrayWithTwoItemsInOrder() {
        SortingTests.testSortingArrayWithTwoItemsInOrder(QuickSort.sort)
    }
    
    func testSortingArrayWithTwoItemsInReversedOrder() {
        SortingTests.testSortingArrayWithTwoItemsInReversedOrder(QuickSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsSortedExceptForOne() {
        SortingTests.testSortingArrayWithMultipleItemsSortedExceptForOne(QuickSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsInRandomOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInRandomOrder(QuickSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsInCorrectOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInCorrectOrder(QuickSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsInReverseOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInReverseOrder(QuickSort.sort)
    }
    
    func testSortingArrayWithMultipleMatchingValuesInRandomOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInReverseOrder(QuickSort.sort)
    }
    
}
