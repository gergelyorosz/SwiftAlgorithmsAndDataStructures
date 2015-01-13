//
//  HeapSort.swift
//  AlgorithmsAndDataStructures
//
//  Created by Carolyn Johnson on 02/08/2014.
//  Copyright (c) 2014 com.gergelyorosz. All rights reserved.
//

import Foundation

class HeapSort
{
    class func sort(inout array: [Int]) {
        buildMaxHeap(&array)
        var heapSize = array.count
        for(var i:Int = array.count-1; i >= 1; i--) {
            println("Swapping \(array[0]) with \(array[i])")
            swap(&array, index1: 0, index2: i)
            heapSize -= 1
            maxHeapify(&array, rootIndex: 0, heapSize: heapSize)
        }
    }
    
    class func buildMaxHeap(inout array: [Int]) {
        for(var i = array.count / 2; i >= 0; i--) {
            maxHeapify(&array, rootIndex: i, heapSize: array.count)
        }
    }
    
    class func maxHeapify(inout array: [Int], rootIndex: Int, heapSize: Int) {
        let leftIndex = left(rootIndex),
            rightIndex = right(rootIndex)
        var largestIndex = rootIndex
        if leftIndex < heapSize && array[leftIndex] > array[largestIndex] {
            largestIndex = leftIndex
        }
        if rightIndex < heapSize && array[rightIndex] > array[largestIndex] {
            largestIndex = rightIndex
        }
        if rootIndex != largestIndex {
            swap(&array, index1: rootIndex, index2: largestIndex)
            maxHeapify(&array, rootIndex: largestIndex, heapSize: heapSize)
        }
    }
    
    class func left(i: Int) -> Int {
        return 2 * i
    }
    
    class func right(i: Int) -> Int {
        return 2 * i + 1
    }
    
    class func swap(inout array: [Int], index1: Int, index2: Int) {
        var tmp = array[index1]
        array[index1] = array[index2]
        array[index2] = tmp
    }
}