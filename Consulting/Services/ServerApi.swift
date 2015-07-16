//
//  ServerApi.swift
//  Consulting
//
//  Created by Svitlana Moiseyenko on 7/14/15.
//  Copyright (c) 2015 Svitlana Moiseyenko. All rights reserved.
//

import Foundation


class ServerApi {
    
    /**
    Singelton
    */
    class var sharedInstance : ServerApi {
        
        struct Static {
            static var onceToken : dispatch_once_t = 0
            static var instance : ServerApi? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = ServerApi()
        }
        return Static.instance!
    }
    
    /**
    Get Data from Server
    */
    func getDataFromServer() -> Dictionary<String, AnyObject> {
        
        // connect to server via Alamofire and get data
        return Dictionary<String, AnyObject>()
    }
    
}