//
//  FactorialVC.swift
//  Fun With Algorithms
//
//  Created by Ram Mhapasekar on 15/04/17.
//  Copyright © 2017 rammhapasekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func twoD_array_btn_click(_ sender: Any) {
        
        let twoD_array: TwoDimentionalArray = TwoDimentionalArray<Int>()
        
        twoD_array.twoDimentionalArrayWith(row: 6, column: 3)
    }
    
    
    
    @IBAction func fizzBuzzBtnClick(_ sender: Any) {
        
        let fizzBuzz = FizzBuzz()
        
        fizzBuzz.isValidfizzBuzzArray(array: [1,2,3,4,6,7,4,3,5,90,65,63,76,15])
    }
    
    
    @IBAction func factorialOfNumberBtnClick(_ sender: Any) {
        
        let factorial = Factorial()
        
        
        print(factorial.factorialOfValue(value: 5))
        
        print(factorial.recursiveFactorialValue(value: 5))
        
    }
    
    
    @IBAction func BinarySeachBtnClick(_ sender: Any) {
        
        let minValue = 7
        let maxValue = 100
        
        let binarySearch = BinarySearch()
        
        let searchValue = Int(arc4random_uniform(UInt32(maxValue) + UInt32(minValue)))
        
        let inArray = generateArrayOfRandomNumberInRange(From: minValue, To: maxValue, limit: 12)
        
        let (result,atIndex,iteration) = binarySearch.binarySearch(searchValue: searchValue, array: inArray)
        
        if result{
            print("Array contains \(searchValue) at index \(atIndex) 😍 and it took \(iteration) iteration")
        }
        else{
            print("Ugg!, Array does not contains \(searchValue) 😓 and it took \(iteration) iteration")
        }
        
    }
    
    func generateArrayOfRandomNumberInRange(From: Int, To: Int,limit: Int) -> [Int]{
        
        var array = [Int]()
        for _ in 0..<limit{
            array.append(Int(arc4random_uniform(UInt32(To)) + UInt32(From)))
        }
        return array
    }
}
