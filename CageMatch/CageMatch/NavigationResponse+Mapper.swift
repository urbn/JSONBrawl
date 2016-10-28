//
//  NavigationResponse+Mapper.swift
//  CageMatch
//
//  Created by Kevin Taniguchi on 10/27/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import Foundation
import Mapper

fileprivate let navigationItemsKey = "navigationItems"

class NavigationResponseMapper: NSObject, Mappable {
    let mainNavigationItems: [NavigationItemMapper]
    
    required init(map: Mapper) throws {
        
        let json: NSDictionary = try map.from("")

        var parsedNavItems = [NavigationItemMapper]()
        if let rawNavItems: [NSDictionary] = try json.value(for: "navigationItems"), let rawMainItem = rawNavItems.first, let rawMainChildren: [NSDictionary] = try? rawMainItem.value(for: "navigationItems") {
            
            for rawChild in rawMainChildren {
                if let child: NavigationItemMapper = NavigationItemMapper.from(rawChild) {
                    parsedNavItems.append(child)
                }
            }
        }
        
        // Like Marshal, Mapper throws out the entire damn thing because there is no optional array parsing
        //        let topLevelItem: [NavigationItemMapper] = try map.from("navigationItems")
        //        mainNavigationItems = topLevelItem.first?.children ?? []

        if parsedNavItems.count == 0 {
            throw NavigationResponseMappingError.missingNavigationItemsError
        }

        mainNavigationItems = parsedNavItems
    }
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
