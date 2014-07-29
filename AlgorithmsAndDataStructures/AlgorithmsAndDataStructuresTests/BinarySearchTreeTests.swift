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
        let values = [2, 3, 4]
        for value in values {
            self.tree.insert(value)
        }
        
        XCTAssertNil(tree.root!.left)
        XCTAssertEqual(tree.root!.value, 2)
        XCTAssertEqual(tree.root!.right!.value, 3)
        XCTAssertEqual(tree.root!.right!.right!.value, 4)
    }
    
    func testInsertThreeDesccendingItems() {
        let values = [4, 3, 2]
        for value in values {
            self.tree.insert(value)
        }
        
        XCTAssertNil(tree.root!.right)
        XCTAssertEqual(tree.root!.value, 4)
        XCTAssertEqual(tree.root!.left!.value, 3)
        XCTAssertEqual(tree.root!.left!.left!.value, 2)
    }
    
    func testInsertThreeUnorderedItems() {
        let values = [3, 4, 2]
        for value in values {
            self.tree.insert(value)
        }
        
        XCTAssertEqual(tree.root!.value, 3)
        XCTAssertEqual(tree.root!.left!.value, 2)
        XCTAssertEqual(tree.root!.right!.value, 4)
    }
    
    func testInsertSevenUnorderedItems() {
        let values = [8, 10, 3, 14, 1, 6, 13]
        for value in values {
            self.tree.insert(value)
        }
        
        XCTAssertEqual(tree.root!.value, 8)
        XCTAssertEqual(tree.root!.left!.value, 3)
        XCTAssertEqual(tree.root!.left!.left!.value, 1)
        XCTAssertEqual(tree.root!.left!.right!.value, 6)
        XCTAssertEqual(tree.root!.right!.value, 10)
        XCTAssertEqual(tree.root!.right!.right!.value, 14)
        XCTAssertEqual(tree.root!.right!.right!.left!.value, 13)
    }
    
    func testValidateEmptyTree() {
        self.tree.root = nil
        XCTAssertTrue(self.tree.isValid)
    }
    
    func testValidateTreeWithRootNode() {
        self.tree.root = BinaryTreeNode(value:1)
        XCTAssertTrue(self.tree.isValid)
    }
    
    func testValidateValidTreeWithThreeNodes() {
        self.tree.root = BinaryTreeNode(value:3)
        self.tree.root!.left = BinaryTreeNode(value:2)
        self.tree.root!.right = BinaryTreeNode(value:4)
        XCTAssertTrue(self.tree.isValid)
    }
    
    func testValidateInvalidTreeWithThreeNodes() {
        self.tree.root = BinaryTreeNode(value:3)
        self.tree.root!.left = BinaryTreeNode(value:4)
        self.tree.root!.right = BinaryTreeNode(value:2)
        XCTAssertFalse(self.tree.isValid)
    }
    
    func testValidateValidTreeWithFiveNodes() {
        self.tree.root = BinaryTreeNode(value:20)
        self.tree.root!.left = BinaryTreeNode(value:10)
        self.tree.root!.right = BinaryTreeNode(value:30)
        self.tree.root!.right!.left = BinaryTreeNode(value:25)
        self.tree.root!.right!.right = BinaryTreeNode(value:40)
        XCTAssertTrue(self.tree.isValid)
    }
    
    func testValidateInvalidTreeWithFiveNodes() {
        self.tree.root = BinaryTreeNode(value:20)
        self.tree.root!.left = BinaryTreeNode(value:10)
        self.tree.root!.right = BinaryTreeNode(value:30)
        self.tree.root!.right!.left = BinaryTreeNode(value:5)
        self.tree.root!.right!.right = BinaryTreeNode(value:40)
        XCTAssertFalse(self.tree.isValid)
    }
    
    func testFindReturnsNilForEmptyTree() {
        XCTAssertNil(self.tree.find(1))
    }
    
    func testFindReturnsNonNilWhenRootMatches() {
        self.tree.insert(1)
        XCTAssertNotNil(self.tree.find(1))
    }
    
    func testFindReturnsTrueWhenItemInserted() {
        let values = [8, 10, 3, 14, 1, 6, 13]
        for value in values {
            self.tree.insert(value)
        }
        
        for value in values {
            XCTAssertNotNil(self.tree.find(value))
        }
    }
    
    func testFindReturnsNonNilWhenItemNotInTree() {
        let values = [8, 10, 3, 14, 1, 6, 13]
        for value in values {
            self.tree.insert(value)
        }
        let valuesNotInserted = [-1, 0, 2, 2, 4, 11, 15, 16]
        
        for value in valuesNotInserted {
            XCTAssertNil(self.tree.find(value))
        }
    }
    
    func testDeleteNonExistentElementDoesNothing() {
        self.tree.insert(1)
        self.tree.delete(2)
        XCTAssertEqual(self.tree.root!.value, 1)
    }
    
    func testDeleteLeaf() {
        let values = [3, 4, 2]
        for value in values {
            self.tree.insert(value)
        }
        self.tree.delete(2)
        XCTAssertEqual(self.tree.root!.value, 3)
        XCTAssertNil(self.tree.root!.left)
        XCTAssertEqual(self.tree.root!.right!.value, 4)
    }
    
    func testDeleteNodeWithOneChild() {
        let values = [3, 4, 2, 1]
        for value in values {
            self.tree.insert(value)
        }
        
        XCTAssertEqual(self.tree.root!.left!.value, 2)
        XCTAssertNotNil(self.tree.root!.left!.left)
        
        self.tree.delete(2)
        XCTAssertEqual(self.tree.root!.left!.value, 1)
        XCTAssertNil(self.tree.root!.left!.left)
    }
    
    func testDeleteNodeWithTwoChildren() {
        let values = [3, 4, 2]
        for value in values {
            self.tree.insert(value)
        }
        
        XCTAssertEqual(self.tree.root!.value, 3)
        XCTAssertEqual(self.tree.root!.right!.value, 4)
        
        self.tree.delete(3)
        XCTAssertEqual(self.tree.root!.value, 2)
        XCTAssertEqual(self.tree.root!.right!.value, 4)
    }
    
    func testDeleteNodeWithTwoChildrenAndSubtreeUnder() {
        // TODO: delete recursively with subtrees modifying
    }
}
