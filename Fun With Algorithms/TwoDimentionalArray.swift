//
//  TwoDimentionalArray.swift
//  Fun With Algorithms
//
//  Created by Ram Mhapasekar on 17/04/17.
//  Copyright © 2017 rammhapasekar. All rights reserved.
//

import Foundation

class TwoDimentionalArray<T>{
    
    var array2D = [[T]]()
    var newArray2D = Array<Array<T>>()
    
    func twoDimentionalArrayWith(row: Int, column:Int){
        
        for _ in  0..<row{
            let tempArray:NSMutableArray = NSMutableArray()
            for j in 0..<column{
                
                tempArray[j] = j
            }
            array2D.append(Array(tempArray) as! [T])
        }
        
        print("\n\n2D-Array[\(row) * \(column)]\n")
        for i in array2D{
            print("   \(i)")
        }
        
        for i in 0..<column{
            let tempArray:NSMutableArray = NSMutableArray()
            for j in 0..<row{
                tempArray[j] = array2D[j][i]
            }
            newArray2D.append(Array(tempArray) as! [T])
        }
        
        print("\n\n2D-Array[\(column) * \(row)]\n")
        for i in newArray2D{
            print("   \(i)")
        }
    }
}
