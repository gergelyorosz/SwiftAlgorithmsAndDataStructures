//
//  MergeSort.swift
//  AlgorithmsAndDataStructures
//
//  Created by Carolyn Johnson on 31/07/2014.
//  Copyright (c) 2014 com.gergelyorosz. All rights reserved.
//

import Foundation

class MergeSort
{
    class func sort(inout array: [Int]) {
        var sortedArray = mergeSort(&array)
        for(var i=0; i < array.count; i++) {
            array[i] = sortedArray[i]
        }
    }
    
    class func mergeSort(inout array: [Int]) -> [Int] {
        if(array.count <= 1) {
            return array
        }
        var midPoint = array.count / 2
        var leftArray = createArrayFrom(array, startIndex: 0, endIndex: midPoint)
        var rightArray = createArrayFrom(array, startIndex: midPoint, endIndex: array.count)
        let leftSortedArray = mergeSort(&leftArray)
        let rightSortedArray = mergeSort(&rightArray)
        
        var iLeft = 0, iRight = 0;
        for(var i=0; i < array.count; i++) {
            if(iRight >= rightSortedArray.count) {
                array[i] = leftSortedArray[iLeft];
                iLeft += 1
            }
            else if(iLeft >= leftSortedArray.count) {
                array[i] = rightSortedArray[iRight];
                iRight += 1
            }
            else if(leftSortedArray[iLeft] < rightSortedArray[iRight]) {
                array[i] = leftSortedArray[iLeft];
                iLeft+=1
            }
            else {
                array[i] = rightSortedArray[iRight];
                iRight+=1
            }
        }
        return array;
    }
  
    class func createArrayFrom(array: [Int], startIndex: Int, endIndex: Int) -> [Int] {
        var newArray = [Int]();
        for(var i = startIndex; i < endIndex && i < array.count; i++) {
            newArray.append(array[i])
        }
        return newArray
    }
}