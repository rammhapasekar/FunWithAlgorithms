//
//  Factorial.swift
//  Fun With Algorithms
//
//  Created by Ram Mhapasekar on 17/04/17.
//  Copyright © 2017 rammhapasekar. All rights reserved.
//

import Foundation

class Factorial{
    
    func factorialOfValue(value: UInt) -> UInt{
        print("Factorial of \(value)")
        if value == 1{
            return 1
        }
        
        var product:UInt = 1
        for i in 1...value{
            print("\(i) * \(product) = \(product * i)")
            product = product * i
        }
        return product
    }
    
    
    
    func recursiveFactorialValue(value: UInt) -> UInt{
        if value == 1{ return 1 }
        return value * recursiveFactorialValue(value: value - 1)
    }
}
