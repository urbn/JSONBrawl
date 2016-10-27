//
//  NavigationItem+Marshal.swift
//  CageMatch
//
//  Created by Jason Grandelli on 10/27/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import Foundation
import Marshal

class NavigationItemMarshal: NSObject, Unmarshaling {
    let itemId: String
    let displayName: String
    let slug: String
    
    let categoryId: String?
    let typeCode: ItemType?
    let parentItemId: String?
    let parentSlug: String?
    let children: [NavigationItemMarshal]?
    let containerInfo: [String]?
    
    required init(object: MarshaledObject) throws {
//        if let typeCode = try? json => "typeCode" as? String, let code = typeCode {
//            self.typeCode = ItemType(rawValue: code)
//        }
//        else {
//            self.typeCode = nil
//        }
//        
//        if let children: [NavigationItem] = try? [NavigationItem].decode(json =>? "navigationItems", ignoreInvalidObjects: true) , !children.isEmpty {
//            self.children = children
//        }
//        else {
//            self.children = nil
//        }
//        
//        if let containerInfo: [String] = try? [String].decode(json => "containerInfo", ignoreInvalidObjects: true) , !containerInfo.isEmpty {
//            self.containerInfo = containerInfo
//        }
//        else {
//            self.containerInfo = nil
//        }

        itemId = try object.value(for: "itemId")
        displayName = try object.value(for: "displayName")
        slug = try object.value(for: "slug")

        categoryId = try? object.value(for: "categoryId")
        typeCode = try? object.value(for: "typeCode")
        parentItemId = try? object.value(for: "parentItemId")
        parentSlug = try? object.value(for: "parentSlug")
        children = try? object.value(for: "navigationItems")
        containerInfo = try? object.value(for: "containerInfo")
    }
}

// MARK: - Descriptions
extension NavigationItemMarshal {
    open override var description: String {
        return "<\(type(of: self)): \(Unmanaged.passUnretained(self).toOpaque())> - displayName: \"\(displayName)\", itemId: \(itemId), slug: \"\(slug)\", children: \(children)"
    }
}

