//
//  InsertionSort.swift
//  AlgorithmsAndDataStructures
//
//  Created by Carolyn Johnson on 30/07/2014.
//  Copyright (c) 2014 com.gergelyorosz. All rights reserved.
//

import Foundation

class InsertionSort
{
    class func sort(inout array: [Int]) {
        for(var i = 1; i < array.count; i++) {
            let currentValue = array[i]
            var j = i - 1;
            while(j >= 0 && array[j] > currentValue) {
                array[j + 1] = array[j]
                j -= 1
            }
            array[j + 1] = currentValue
        }
    }
}
