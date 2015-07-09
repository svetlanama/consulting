//
//  FirstViewController.swift
//  Consulting
//
//  Created by Svitlana Moiseyenko on 7/9/15.
//  Copyright (c) 2015 Svitlana Moiseyenko. All rights reserved.
//





import UIKit



class FirstViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel! // put every time "!" if not connectect you can see it will crash
    
    var mass = [1,2,2,3,3,5,5,5,7,7];
    let qosInitiated = Int(QOS_CLASS_USER_INITIATED.value)
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        
          //label.text = "hello"
         //self.testGCD()
         //self.fibonacci()
         //self.avg(mass);
          self.getDataFromEmptyArr()
    }
    
    // Empty array
    func getDataFromEmptyArr() {
        
        var emptyArr = Array<Int>();
        //println(emptyArr.count)
         assert(emptyArr.count > 0, "Array is empty!");
        //var num = emptyArr[0];
    }
    
    // Fibonacci
    // example debug always show dissasembly 115
    func fibonacci() {
        
        var f = 0;
        var g = 1;
        
        for var i = 0; i < 15; i++ {
            print(f);
            f = f + g;
            g = f - g;
        }
    }

    // Calculation of average of array numbers
    func avg(arr: [Int]) -> Int {
        
        var sum = 0;
        for var i = 0; i < arr.count; i++ {
            sum += arr[i]
           // println(sum)
        }
        return sum / mass.count
    }
    
    
    func testGCD() {
        
        var res = 0;
        dispatch_async(dispatch_get_global_queue(qosInitiated, 0)) {
        //dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
            res = self.avg(self.mass);
            dispatch_async(dispatch_get_main_queue()) {
                 println(res)
            }
        } 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

