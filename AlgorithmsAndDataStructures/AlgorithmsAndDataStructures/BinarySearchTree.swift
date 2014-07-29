//
//  BinaryTree.swift
//  AlgorithmsAndDataStructures
//
//  Created by Carolyn Johnson on 28/07/2014.
//  Copyright (c) 2014 com.gergelyorosz. All rights reserved.
//

import Foundation

class BinaryTreeNode
{
    var left: BinaryTreeNode?
    var right: BinaryTreeNode?
    var parent: BinaryTreeNode?
    var value: Int
    
    var isLeaf: Bool{
        get {
           return left == nil && right == nil
        }
    }
    
    init(value: Int) {
        self.value = value
    }
    
    init(value: Int, parent: BinaryTreeNode?) {
        self.value = value
        self.parent = parent
    }   
}

class BinarySearchTree
{
    var root: BinaryTreeNode?
    
    var isValid: Bool {
        get {
            return isBst(self.root, max: Int.max, min: Int.min)
        }
    }
    
    func insert(value: Int) {
        if root == nil {
            root = BinaryTreeNode(value: value, parent: nil)
        }
        else {
            insert(root!, value: value)
        }
    }
    
    func insert(currentNode: BinaryTreeNode, value: Int) {
        if value < currentNode.value {
            if currentNode.left == nil {
                currentNode.left = BinaryTreeNode(value: value, parent: currentNode)
            } else {
                insert(currentNode.left!, value: value)
            }
        } else {
            if currentNode.right == nil {
                currentNode.right = BinaryTreeNode(value: value, parent: currentNode)
            } else {
                insert(currentNode.right!, value: value)
            }
        }
    }
    
    func delete(value: Int) {
        let nodeToDelete = find(value)
        delete(nodeToDelete)
    }
    
    func delete(node: BinaryTreeNode?) {
        if node == nil {
            return
        }
        if node!.isLeaf {
            replaceNodeWith(node, replacementNode: nil)
        }
        else if node!.left != nil && node!.right != nil {
            node!.value = node!.right!.value
            delete(node!.right)
        }
        else {
            if node!.left != nil {
                replaceNodeWith(node, replacementNode: node!.left)
            }
            else {
                replaceNodeWith(node, replacementNode: node!.right)
            }
        }
    }
    
    func replaceNodeWith(node: BinaryTreeNode?, replacementNode: BinaryTreeNode?) {
        if node == nil || node!.parent == nil {
            return
        }
        if node!.parent!.left === node {
            node!.parent!.left = replacementNode
        }
        if node!.parent!.right === node {
            node!.parent!.right = replacementNode
        }
    }
    
    func find(value: Int) -> BinaryTreeNode? {
        return find(self.root, value: value)
    }
    
    func find(node: BinaryTreeNode?, value: Int) -> BinaryTreeNode? {
        if node == nil || node!.value == value {
            return node
        }
        if value < node!.value {
            return find(node!.left, value:value)
        }
        else {
            return find(node!.right, value:value)
        }
    }
    
    func isBst(node: BinaryTreeNode?, max: Int, min: Int) -> Bool {
        if node == nil {
            return true
        }
        if node!.value > max || node!.value < min {
            return false
        }
        return isBst(node!.left, max: node!.value, min: min) && isBst(node!.right, max: max, min: node!.value)
    }
}
