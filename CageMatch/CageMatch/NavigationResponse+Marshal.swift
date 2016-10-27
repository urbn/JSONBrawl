//
//  NavigationResponse+Marshal.swift
//  CageMatch
//
//  Created by Jason Grandelli on 10/27/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import Foundation
import Marshal

class NavigationResponseMarshal: NSObject, Unmarshaling {
    let navigationItems: [NavigationItemMarshal]
    
    required init(object: MarshaledObject) throws {
        let navItems: [NavigationItemMarshal]? = try? object.value(for: "navigationItems")
        guard let mainNavChildren = navItems?.first?.children else {
            throw NavigationResponseMappingError.missingNavigationItemsError
        }

        navigationItems = mainNavChildren
    }
}
