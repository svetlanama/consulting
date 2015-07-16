//
//  SecondViewController.swift
//  Consulting
//
//  Created by Svitlana Moiseyenko on 7/9/15.
//  Copyright (c) 2015 Svitlana Moiseyenko. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadImage()

        //self.testSync()
        self.testAsync()
    }
    
    // make calculations with GCD
    func testGCD() {
        
        var res = 0;
        dispatch_async(dispatch_get_global_queue(qosInitiated, 0)) {
            res = CalculationHelper.avg(CalculationHelper.mass);
            dispatch_async(dispatch_get_main_queue()) {
                println(res)
            }
        }
    }
    
    // load image with GCD
    func loadImage() {
        
        let imageUrl = "http://www.clipartbest.com/cliparts/nTB/Xrp/nTBXrpbTA.png"
        var image = UIImage()
        
        dispatch_async(dispatch_get_global_queue(Int(QOS_CLASS_USER_INITIATED.value), 0)) { // 1
            
            let url = NSURL(string: imageUrl)
            let data = NSData(contentsOfURL: url!)
            image = UIImage(data: data!)!
            
            dispatch_async(dispatch_get_main_queue()) { // 2
                self.imageView.image = image
            }
        }
    }
    
    // Sync
    func testSync() {
        
        var summ: Int = 0
        //let serial_queue = dispatch_queue_create("mt.queue", nil)
        let queue = dispatch_get_global_queue(qosInitiated, 0)
 
        
        dispatch_sync(queue) {
            summ += 1
            println("1 ---->\(summ)")
        }
        
        dispatch_sync(queue) {
            summ += 3
            println("2 ---->\(summ)")
        }
        
        dispatch_async(queue) {
            summ += 2
            println("3 ---->\(summ)")
        }
    }
    
    // Async
    func testAsync() {
        
        var summ: Int = 0
        let queue = dispatch_get_global_queue(qosInitiated, 0)
        
        
        dispatch_async(queue) {
            summ += 1
            println("1 ---->\(summ)")
        }
        
        dispatch_async(queue) {
            summ += 3
            println("2 ---->\(summ)")
        }
        
        dispatch_async(queue) {
            summ += 2
            println("3 ---->\(summ)")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

