//
//  BaseHelper.swift
//  Consulting
//
//  Created by Svitlana Moiseyenko on 7/14/15.
//  Copyright (c) 2015 Svitlana Moiseyenko. All rights reserved.
//

import Foundation
import UIKit

let screenSize: CGRect = UIScreen.mainScreen().bounds

class BaseHelper {
    
    /**
    Get phone screen size
    
    :returns: size
    */
    class func getScreenSize() -> CGSize {
        let size: CGSize = screenSize.size
        return size
    }
    
}
