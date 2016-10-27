//
//  NavigationResponse.swift
//  CageMatch
//
//  Created by Jason Grandelli on 10/27/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import UIKit

enum NavigationResponseMappingError: Error {
    case missingNavigationItemsError
}

class NavigationResponse: NSObject {
    let navigationItems: [NavigationItem]
    
    override init() {
        fatalError()
    }
}
