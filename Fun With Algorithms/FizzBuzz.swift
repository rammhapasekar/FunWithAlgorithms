//
//  FizzBuzz.swift
//  Fun With Algorithms
//
//  Created by Ram Mhapasekar on 16/04/17.
//  Copyright © 2017 rammhapasekar. All rights reserved.
//

import Foundation

class FizzBuzz{
    
    func isValidfizzBuzzArray(array: [Int]){
        
        let sortedArray = array.sorted()
        
        for i in sortedArray{
            if i % 3 == 0 && i % 5 == 0{
                print("\(i) is Fizz Buzz 😍")
            }
            else if i % 3 == 0{
                print("\(i) is fizz 😘")
            }
            else if i % 5 == 0{
                print("\(i) is buzz 😚")
            }
            else{
                print("\(i) 😠")
            }
        }
    }
}
