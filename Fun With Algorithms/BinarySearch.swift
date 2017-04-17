//
//  BinarySearch.swift
//  Fun With Algorithms
//
//  Created by Ram Mhapasekar on 15/04/17.
//  Copyright © 2017 rammhapasekar. All rights reserved.
//

import Foundation

class BinarySearch{

    func linearSearch(searchValue: Int, array: [Int]) -> (Bool,Int){
        
        print("\n\nArray For Linear Search \n \(array)\n To search value \(searchValue) ")
        
        
        var count = 0
        for i in array{
            count += 1
            if i == searchValue{
                return (true,i)
            }
        }
        return (false,count)
    }
    
    
    func binarySearch(searchValue:Int, array: [Int]) -> (Bool, Int, Int){
        
        var count = 0
        
        print("\n\nArray For Binary Search \n \(array)\n")
        
        let SortedArray =  array.sorted()
        
        print("Sorted Array For Binary Search \n \(SortedArray) \n")
        
        var leftIndex = 0
        var rightIndex = SortedArray.count - 1
        
        while leftIndex <= rightIndex{
            
            count += 1
            
            let middleIndex = (leftIndex + rightIndex) /  2
            let middleValue = SortedArray[middleIndex]
            
            print("Middle Index : \(middleIndex), Middle Value : \(middleValue), Right Index : \(rightIndex), Left Index : \(leftIndex) [\(SortedArray[leftIndex]),  \(SortedArray[rightIndex])]")
            
            if middleValue == searchValue{
                return (true,middleIndex,count)
            }
            
            if searchValue < middleValue{
                rightIndex = middleIndex - 1
            }
            
            if searchValue > middleValue{
                leftIndex = middleIndex + 1
            }
        }
        return (false,-1,count)
    }
}
