//
//  InsertionSortTests.swift
//  AlgorithmsAndDataStructures
//
//  Created by Carolyn Johnson on 30/07/2014.
//  Copyright (c) 2014 com.gergelyorosz. All rights reserved.
//

import XCTest
import AlgorithmsAndDataStructures

class InsertionSortTests: XCTestCase {
   
    func testSortingAnEmptyArray() {
        SortingTests.testSortingAnEmptyArray(InsertionSort.sort)
    }
    
    func testSortingArrayWithOneItem() {
        SortingTests.testSortingArrayWithOneItem(InsertionSort.sort)
    }
    
    func testSortingArrayWithTwoItemsInOrder() {
        SortingTests.testSortingArrayWithTwoItemsInOrder(InsertionSort.sort)
    }
    
    func testSortingArrayWithTwoItemsInReversedOrder() {
        SortingTests.testSortingArrayWithTwoItemsInReversedOrder(InsertionSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsSortedExceptForOne() {
        SortingTests.testSortingArrayWithMultipleItemsSortedExceptForOne(InsertionSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsInRandomOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInRandomOrder(InsertionSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsInCorrectOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInCorrectOrder(InsertionSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsInReverseOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInReverseOrder(InsertionSort.sort)
    }
    
    func testSortingArrayWithMultipleMatchingValuesInRandomOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInReverseOrder(InsertionSort.sort)
    }

}
