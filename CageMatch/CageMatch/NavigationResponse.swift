//
//  NavigationResponse.swift
//  CageMatch
//
//  Created by Jason Grandelli on 10/27/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import UIKit

public class NavigationResponse: NSObject {
    let navigationItems: [NavigationItem]
    let containers: [String: [NavigationItem]]?
    
    override init() {
        fatalError()
    }
}
