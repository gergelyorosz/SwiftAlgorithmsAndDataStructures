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
    
    func testInsertThreeUnorderedItems() {
        self.tree.insert(3)
        self.tree.insert(4)
        self.tree.insert(2)
        
        XCTAssertEqual(tree.root!.value, 3)
        XCTAssertEqual(tree.root!.left!.value, 2)
        XCTAssertEqual(tree.root!.right!.value, 4)
    }
    
    func testInsertSevenUnorderedItems() {
        self.tree.insert(8)
        self.tree.insert(10)
        self.tree.insert(3)
        self.tree.insert(14)
        self.tree.insert(1)
        self.tree.insert(6)
        self.tree.insert(13)
        
        XCTAssertEqual(tree.root!.value, 8)
        XCTAssertEqual(tree.root!.left!.value, 3)
        XCTAssertEqual(tree.root!.left!.left!.value, 1)
        XCTAssertEqual(tree.root!.left!.right!.value, 6)
        XCTAssertEqual(tree.root!.right!.value, 10)
        XCTAssertEqual(tree.root!.right!.right!.value, 14)
        XCTAssertEqual(tree.root!.right!.right!.left!.value, 13)
    }
    
    func testValidateEmptyTree()
    {
        self.tree.root = nil
        XCTAssertTrue(self.tree.isValid)
    }
    
    func testValidateTreeWithRootNode()
    {
        self.tree.root = BinaryTreeNode(value:1)
        XCTAssertTrue(self.tree.isValid)
    }
    
    func testValidateValidTreeWithThreeNodes()
    {
        self.tree.root = BinaryTreeNode(value:3)
        self.tree.root!.left = BinaryTreeNode(value:2)
        self.tree.root!.right = BinaryTreeNode(value:4)
        XCTAssertTrue(self.tree.isValid)
    }
    
    func testValidateInvalidTreeWithThreeNodes()
    {
        self.tree.root = BinaryTreeNode(value:3)
        self.tree.root!.left = BinaryTreeNode(value:4)
        self.tree.root!.right = BinaryTreeNode(value:2)
        XCTAssertFalse(self.tree.isValid)
    }
    
    func testValidateValidTreeWithFiveNodes()
    {
        self.tree.root = BinaryTreeNode(value:20)
        self.tree.root!.left = BinaryTreeNode(value:10)
        self.tree.root!.right = BinaryTreeNode(value:30)
        self.tree.root!.right!.left = BinaryTreeNode(value:25)
        self.tree.root!.right!.right = BinaryTreeNode(value:40)
        XCTAssertTrue(self.tree.isValid)
    }
    
    func testValidateInvalidTreeWithFiveNodes()
    {
        self.tree.root = BinaryTreeNode(value:20)
        self.tree.root!.left = BinaryTreeNode(value:10)
        self.tree.root!.right = BinaryTreeNode(value:30)
        self.tree.root!.right!.left = BinaryTreeNode(value:5)
        self.tree.root!.right!.right = BinaryTreeNode(value:40)
        XCTAssertFalse(self.tree.isValid)
    }


}
