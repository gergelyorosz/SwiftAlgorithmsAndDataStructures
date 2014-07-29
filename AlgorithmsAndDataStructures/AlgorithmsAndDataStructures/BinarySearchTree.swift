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
    var value: Int
    
    var isLeaf: Bool{
        get {
           return left == nil && right == nil
        }
    }
    
    init(value: Int)
    {
        self.value = value
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
    
    func insert(value: Int)
    {
        if root == nil {
            root = BinaryTreeNode(value: value)
        }
        else {
            insert(root!, nodeToInsert: BinaryTreeNode(value: value))
        }
    }
    
    func insert(currentNode: BinaryTreeNode, nodeToInsert: BinaryTreeNode) {
        if nodeToInsert.value < currentNode.value {
            if currentNode.left == nil {
                currentNode.left = nodeToInsert
            } else {
                insert(currentNode.left!, nodeToInsert: nodeToInsert)
            }
        } else {
            if currentNode.right == nil {
                currentNode.right = nodeToInsert
            } else {
                insert(currentNode.right!, nodeToInsert: nodeToInsert)
            }
        }
    }
    
    func isBst(node: BinaryTreeNode?, max: Int, min: Int) -> Bool
    {
        if node == nil {
            return true
        }
        if node!.value > max || node!.value < min {
            return false
        }
        return isBst(node!.left, max: node!.value, min: min) && isBst(node!.right, max: max, min: node!.value)
    }
    
    func delete(value: Int)
    {
    }
}
