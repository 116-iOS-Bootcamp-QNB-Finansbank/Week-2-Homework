//
//  MathOperations.swift
//  Week2
//
//  Created by Burak on 8.09.2021.
//

import Foundation


class MathOperations{
    
    static let shared = MathOperations()
    
    
    @discardableResult
    func calculateFibonacci(upperLimit: Int) -> [Int]? {
        if upperLimit < 0 {return nil} else if upperLimit == 0 {return [0]}
        
        var fibonacciNumbersArray : [Int] =  [0, 1]
        var sum = 1
        
        repeat{
            sum = fibonacciNumbersArray[fibonacciNumbersArray.count - 1] + fibonacciNumbersArray [fibonacciNumbersArray.count - 2]
            
            if sum <= upperLimit {
                fibonacciNumbersArray.append(sum)
            }
            
        } while sum <= upperLimit
        
        return fibonacciNumbersArray
}
    
    
    
    private init () { }
}
