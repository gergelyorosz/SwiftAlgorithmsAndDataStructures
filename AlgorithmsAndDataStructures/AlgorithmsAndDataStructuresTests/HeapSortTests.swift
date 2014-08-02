//
//  HeapSortTests.swift
//  AlgorithmsAndDataStructures
//
//  Created by Carolyn Johnson on 02/08/2014.
//  Copyright (c) 2014 com.gergelyorosz. All rights reserved.
//

import XCTest
import AlgorithmsAndDataStructures

class HeapSortTests: XCTestCase {
    
    func testSortingAnEmptyArray() {
        SortingTests.testSortingAnEmptyArray(HeapSort.sort)
    }
    
    func testSortingArrayWithOneItem() {
        SortingTests.testSortingArrayWithOneItem(HeapSort.sort)
    }
    
    func testSortingArrayWithTwoItemsInOrder() {
        SortingTests.testSortingArrayWithTwoItemsInOrder(HeapSort.sort)
    }
    
    func testSortingArrayWithTwoItemsInReversedOrder() {
        SortingTests.testSortingArrayWithTwoItemsInReversedOrder(HeapSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsSortedExceptForOne() {
        SortingTests.testSortingArrayWithMultipleItemsSortedExceptForOne(HeapSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsInRandomOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInRandomOrder(HeapSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsInCorrectOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInCorrectOrder(HeapSort.sort)
    }
    
    func testSortingArrayWithMultipleItemsInReverseOrder() {
        SortingTests.testSortingArrayWithMultipleItemsInReverseOrder(HeapSort.sort)
    }
}