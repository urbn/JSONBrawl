//
//  NavigationItem+PMJSON.swift
//  CageMatch
//
//  Created by Ryan Garchinsky on 10/28/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import Foundation
import PMJSON

class NavigationItemPMJSON: NSObject {
    let itemId: String
    let displayName: String
    let slug: String
    
    let categoryId: String?
    let typeCode: ItemType?
    let parentItemId: String?
    let parentSlug: String?
    let children: [NavigationItemPMJSON]?
    let containerInfo: [String]?
    
    init(json: JSON) throws {
        itemId = try json.getString("itemId")
        displayName = try json.getString("displayName")
        slug = try json.getString("slug")

        categoryId = try json.getStringOrNil("categoryId")
        parentItemId = try json.getStringOrNil("parentItemId")
        parentSlug = try json.getStringOrNil("parentSlug")
        
        if let type = try json.getStringOrNil("typeCode") {
            typeCode = ItemType(rawValue: type)
        }
        else {
            typeCode = nil
        }

        children = try json.mapArrayOrNil("navigationItems", NavigationItemPMJSON.init(json:))
        containerInfo = try json.getArray("containerInfo", { (arr) -> T in
            return arr
        })
    }
}
