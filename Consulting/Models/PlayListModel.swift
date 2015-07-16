//
//  PlayListModel.swift
//  Consulting
//
//  Created by Svitlana Moiseyenko on 7/14/15.
//  Copyright (c) 2015 Svitlana Moiseyenko. All rights reserved.
//

import Foundation

class PlayListModel {
    
    /**
    Singelton
    */
    class var sharedInstance : PlayListModel {
        
        struct Static {
            static var onceToken : dispatch_once_t = 0
            static var instance : PlayListModel? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = PlayListModel()
        }
        return Static.instance!
    }
    
    /**
    Get Data from Server
    */
    func getPlayList() -> Array<Song> {
        
        
        var playList = Array<Song>()
        
        // Mock data
        var s1 = Song()
        s1.name = "Flower"
        s1.author = "Moby"
        playList.append(s1)
        
        // We can do here smth like this
        //let dict = ServerApi.sharedInstance.getDataFromServer()
        //dict -> array
        
        return playList
    }

    
}