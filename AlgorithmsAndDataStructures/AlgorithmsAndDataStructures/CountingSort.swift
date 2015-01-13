//
//  InsertionSort.swift
//  AlgorithmsAndDataStructures
//
//  Created by Carolyn Johnson on 30/07/2014.
//  Copyright (c) 2014 com.gergelyorosz. All rights reserved.
//

import Foundation

class CountingSort
{
    class func sort(inout array: [Int]) {
        var maxValue = getMaxValue(array)
        var sortedArray = countingSort(array, maxValue: maxValue)
        for var i = 0; i < array.count; i++ {
            array[i] = sortedArray[i]
        }
    }
    
    class func countingSort(array: [Int], maxValue: Int) -> [Int]{
        var countingArray = createCountingArray(array, maxValue: maxValue)
        
        var outputArray = [Int](count: array.count, repeatedValue: 0)
        for value in array {
            let outputPosition = countingArray[value] - 1
            outputArray[outputPosition] = value
            countingArray[value] -= 1
        }
        
        return outputArray
    }
    
    class func createCountingArray(array: [Int], maxValue: Int) -> [Int] {
        var countingArray = [Int](count: maxValue + 1, repeatedValue: 0)
        
        for value in array {
            countingArray[value] += 1
        }
        
        for var i = 1; i < countingArray.count; i++ {
            countingArray[i] += countingArray[i-1]
        }
        return countingArray
    }
    
    class func getMaxValue(array: [Int]) -> Int {
        var max = 0
        for value in array {
            if value > max {
                max = value
            }
        }
        return max
    }
}
