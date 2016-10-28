//
//  NavigationResponse+PMJSON.swift
//  CageMatch
//
//  Created by Ryan Garchinsky on 10/28/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import Foundation
import PMJSON

class NavigationResponsePMJSON: NSObject {
    let navigationItems: [NavigationItemPMJSON]
    
    
    init(json: JSON) throws {
        navigationItems = try json.mapArray("navigationItems", NavigationItemPMJSON.init(json:))
    }
}
