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
        /* Unlike Marshal, Mapper does have a method which is designed to flatmap out nil values, but it only works easily on the core value types
        
         NSDictionary
         NSArray
         String
         Int
         UInt
         Float
         Double
         Bool
         
            Conforming a custom model to Convertible literrally requires parsing that model manually, which sucks.
         
            public func from<T: RawRepresentable>(_ field: String, defaultValue: T? = nil) throws ->
            [T] where T.RawValue: Convertible, T.RawValue == T.RawValue.ConvertedType
        */
        //        let topLevelItem: [NavigationItemMapper] = try map.from("navigationItems")
        //        mainNavigationItems = topLevelItem.first?.children ?? []

        if parsedNavItems.count == 0 {
            throw NavigationResponseMappingError.missingNavigationItemsError
        }

        mainNavigationItems = parsedNavItems
    }
}
