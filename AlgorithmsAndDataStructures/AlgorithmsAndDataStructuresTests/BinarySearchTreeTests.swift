//
//  BinarySearchTreeTests.swift
//  AlgorithmsAndDataStructures
//
//  Created by Carolyn Johnson on 28/07/2014.
//  Copyright (c) 2014 com.gergelyorosz. All rights reserved.
//

import XCTest
import AlgorithmsAndDataStructures

class BinarySearchTreeTests: XCTestCase {

    var tree: BinarySearchTree = BinarySearchTree()
    
    override func setUp() {
        super.setUp()
        self.tree = BinarySearchTree()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInitialization() {
        XCTAssertNil(tree.root)
    }
    
    func testIsNodeProperty() {
        let node = BinaryTreeNode(value: 1)
        XCTAssertTrue(node.isLeaf)
        
        node.left = BinaryTreeNode(value: 1)
        XCTAssertFalse(node.isLeaf)
        
        node.left = nil
        XCTAssertTrue(node.isLeaf)
        node.right = BinaryTreeNode(value: 1)
        XCTAssertFalse(node.isLeaf)
        
        node.left = BinaryTreeNode(value: 1)
        XCTAssertFalse(node.isLeaf)
    }

    func testInsertSingleItem() {
        self.tree.insert(5)
        XCTAssertEqual(tree.root!.value, 5)
        XCTAssertTrue(tree.root!.isLeaf)
    }
    
    func testInsertThreeAscendingItems() {
        self.tree.insert(2)
        self.tree.insert(3)
        self.tree.insert(4)
        
        XCTAssertNil(tree.root!.left)
        XCTAssertEqual(tree.root!.value, 2)
        XCTAssertEqual(tree.root!.right!.value, 3)
        XCTAssertEqual(tree.root!.right!.right!.value, 4)
    }
    
    func testInsertThreeDesccendingItems() {
        self.tree.insert(4)
        self.tree.insert(3)
        self.tree.insert(2)
        
        XCTAssertNil(tree.root!.right)
        XCTAssertEqual(tree.root!.value, 4)
        XCTAssertEqual(tree.root!.left!.value, 3)
        XCTAssertEqual(tree.root!.left!.left!.value, 2)
    }


    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
