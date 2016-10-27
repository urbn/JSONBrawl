//
//  NavigationResponse+Mapper.swift
//  CageMatch
//
//  Created by Kevin Taniguchi on 10/27/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import Foundation
import Mapper

class NavigationResponseMapper: NSObject, Mapper {
    let navigationItems: [NavigationItemMarshal]
    
    
}

//class NavigationResponseMarshal: NSObject, Unmarshaling {
//    let navigationItems: [NavigationItemMarshal]
//    
//    required init(object: MarshaledObject) throws {
//        var parsedNavItems = [NavigationItemMarshal]()
//        if let rawNavItems: [NSDictionary] = try object.value(for: "navigationItems"), let rawMainItem = rawNavItems.first, let rawMainChildren: [[String: Any]] = try? rawMainItem.value(for: "navigationItems") {
//            for rawChild in rawMainChildren {
//                if let ni: NavigationItemMarshal = try? rawChild.value(for: "") {
//                    parsedNavItems.append(ni)
//                }
//                
//                
//                print("rawChild name = \(rawChild["slug"])")
//            }
//        }
//        
//        // This throws out the entire damn thing because there is no optional array parsing
//        //        let navItems: [NavigationItemMarshal]? = try? object.value(for: "navigationItems")
//        //        guard let mainNavChildren = navItems?.first?.children else {
//        //            throw NavigationResponseMappingError.missingNavigationItemsError
//        //        }
//        
//        if parsedNavItems.count == 0 {
//            throw NavigationResponseMappingError.missingNavigationItemsError
//        }
//        
//        navigationItems = parsedNavItems
//    }
//}
