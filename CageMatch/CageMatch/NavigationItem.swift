//
//  NavigationItem.swift
//  CageMatch
//
//  Created by Jason Grandelli on 10/27/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import UIKit

public enum ItemType: String {
    case gateway = "GATEWAY"
    case browseItem = "DEFAULT"
    case noNav = "NO_NAV"
    case dynamic = "DYNAMIC"
    case dynamicNoNav = "DYNAM_NONAV"
    case external = "EXTERNAL"
    case content = "CONTENT"
    case lookbook = "LOOKBOOK"
    case brand = "BRAND"
    case homeCollection = "HOME_COLLE"
}

public class NavigationItem: NSObject {
    let itemId: String
    let displayName: String
    let slug: String
    
    let categoryId: String?
    let typeCode: ItemType?
    let parentItemId: String?
    let parentSlug: String?
    let children: [NavigationItem]?
    let containerInfo: [String]?

    override init() {
        fatalError()
    }
}
