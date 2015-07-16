//
//  CalculationHelper.swift
//  Consulting
//
//  Created by Svitlana Moiseyenko on 7/14/15.
//  Copyright (c) 2015 Svitlana Moiseyenko. All rights reserved.
//

import Foundation

class  CalculationHelper {
    
    static var mass = [1,2,2,3,3,5,5,5,7,7];

    
    // Fibonacci
    // example debug always show dissasembly 115
    class func fibonacci() {
        
        var f = 0;
        var g = 1;
        
        for var i = 0; i < 115; i++ {
            print(f);
            f = f + g;
            g = f - g;
        }
    }
    
    // Calculation of average of array numbers
    class func avg(arr: [Int]) -> Int {
        
        var mass = [1,2,2,3,3,5,5,5,7,7];
        var sum = 0;
        for var i = 0; i < arr.count; i++ {
            sum += arr[i]
            // println(sum)
        }
        return sum / mass.count
    }
    
}