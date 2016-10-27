//
//  NavigationItemMapper.swift
//  CageMatch
//
//  Created by Kevin Taniguchi on 10/27/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import Foundation
import Mapper

class NavigationItemMapper: NSObject, Mappable {
    let itemId: String
    let displayName: String
    let slug: String

    let categoryId: String?
    let typeCode: ItemType?
    let parentItemId: String?
    let parentSlug: String?
    let children: [NavigationItemMapper]?
    let containerInfo: [String]?

    required init(map: Mapper) throws {
        try itemId = map.from("itemId")
        try displayName = map.from("displayName")
        try slug = map.from("slug")

        categoryId = map.optionalFrom("categoryId")
        typeCode = map.optionalFrom("typeCode")
        parentItemId = map.optionalFrom("parentItemId")
        parentSlug = map.optionalFrom("parentSlug")
        children = map.optionalFrom("navigationItems")
        containerInfo = map.optionalFrom("containerInfo")
    }
}

extension NavigationItemMapper {
    override var description: String {
        return "<\(type(of: self)): \(Unmanaged.passUnretained(self).toOpaque())> - displayName: \"\(displayName)\", children.count: \(children?.count)"
    }
}
