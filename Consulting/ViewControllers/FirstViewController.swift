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
    var playingTimer = NSTimer()

    
    override func viewDidLoad() {
        super.viewDidLoad()
 
          /** Debug */
          //label.text = "hello"
          //self.testGCD()
          //self.fibonacci()
          //self.avg(mass);
          //self.getDataFromEmptyArr()
        
          /** Code structure */
          //PlayListModel.sharedInstance.getPlayList() // use singelton
          //let screenWidth = BaseHelper.getScreenSize().width // use static methods
        
          /** Timer */
         //self.playingTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updatePlayingProgress", userInfo: nil, repeats: true)
    }
    
    // MARK: Algorithms
    // Empty array
    func getDataFromEmptyArr() {
        
        var emptyArr = Array<Int>();
        //println(emptyArr.count)
         assert(emptyArr.count > 0, "Array is empty!");
        //var num = emptyArr[0];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Timer
    func updatePlayingProgress() {
          println("timer working")
    }
    
    /**
    Stop updating playing progress of selected episode
    */
    func stopUpdatePlayingProgress() {
        self.playingTimer.invalidate()
    }
    
    //MARK: Actions
    @IBAction func unwindToFirst(segue: UIStoryboardSegue) {

        println("Coming from Modal")
    }
    
    @IBAction func calculateFibinacci() {
        CalculationHelper.fibonacci()
    }
}

