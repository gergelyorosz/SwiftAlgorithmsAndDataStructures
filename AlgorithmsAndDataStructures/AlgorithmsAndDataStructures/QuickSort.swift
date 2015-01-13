//
//  InsertionSort.swift
//  AlgorithmsAndDataStructures
//
//  Created by Carolyn Johnson on 30/07/2014.
//  Copyright (c) 2014 com.gergelyorosz. All rights reserved.
//

import Foundation

class QuickSort
{
    class func sort(inout array: [Int]) {
        quicksort(&array, left:0, right:array.count-1)
    }
    
    class func quicksort(inout array: [Int], left: Int, right: Int) {
        if left < right {
            var partitionIndex = partition(&array, left: left, right: right)
            quicksort(&array, left:left, right: partitionIndex-1)
            quicksort(&array, left:partitionIndex+1, right: right)
        }
    }
    
    class func partition(inout array: [Int], left: Int, right: Int) -> Int {
        var pivotIndex = choosePivotIndex(array, left: left, right: right);
        var pivotValue = array[pivotIndex]
        var storeIndex = left
        swap(&array, index1: pivotIndex, index2: right)
        for (var i=left; i<right; i++) {
            if array[i] <= pivotValue {
                swap(&array, index1: i, index2: storeIndex)
                storeIndex += 1
            }
        }
        swap(&array, index1: storeIndex, index2: right)
        return storeIndex
    }

    class func swap(inout array: [Int], index1: Int, index2: Int) {
        var tmp = array[index1];
        array[index1] = array[index2]
        array[index2] = tmp
    }
    
    class func choosePivotIndex(array: [Int], left: Int, right: Int) -> Int {
        var middle = (left + right) / 2
        if array[left] <= array[middle] {
            if array[middle] <= array[right] {
                return middle
            }
            else if array[left] >= array[right] {
                return left
            }
            else {
                return right
            }
        } else { // array[left] >= array[middle]
            if array[left] <= array[right] {
                return left
            }
            else if array[middle] >= array[right] {
                return middle
            }
            else {
                return right
            }
        }
    }
}
