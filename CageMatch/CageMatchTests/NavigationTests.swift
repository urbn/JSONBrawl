//
//  NavigationTests.swift
//  CageMatch
//
//  Created by Jason Grandelli on 10/27/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import XCTest
@testable import CageMatch

class NavigationTests: XCTestCase {
    func testNavigationResponse() -> Void {
//        guard let json = jsonFor("NavigationItemJSON") else {
//            XCTFail("Could not get the NavigationItemJSON")
//            return
//        }
//        do {
//            let testNavResponse = try NavigationResponse.decode(json)
//        }
//        catch {
//            XCTFail("Error decoding item: \(error)")
//        }
//        
//        XCTAssertNotNil(testNavResponse, "Error: should have a test nav response")
//        XCTAssertTrue(testNavResponse?.navigationItems.count == 5, "Warning - main nav Item should have 5 children. Got \(testNavResponse?.navigationItems.count)");
//        
//        guard let mainChildren = testNavResponse?.navigationItems else { return }
//        XCTAssert(mainChildren.count == 5, "Warning - should have 5 main children. Got \(mainChildren.count)")
//        
//        let mainShoppingNavItems = mainChildren.filter({ $0.itemId == "SHOPPING-ROOT" }).first?.children
//        
//        guard let shoppingNavItems = mainShoppingNavItems else {
//            XCTFail("Warning, failed to unwrap shopping navItems.")
//            return
//        }
//        
//        XCTAssertEqual(5, shoppingNavItems.count, "Warning, should have 5 root navigation items. Got: \(shoppingNavItems.count)")
//        
//        guard let clothingNavItem = shoppingNavItems.first else { return }
//        XCTAssertNotNil(clothingNavItem.displayName, "Warning, failed to unwrap a display name for the first nav item")
//        XCTAssertEqual("Clothing", clothingNavItem.displayName, "Warning, the first navItem shoudld have a title \"Clothing\". Instead its: \(clothingNavItem.displayName)")
//        
//        guard let clothingChildren = clothingNavItem.children else {
//            XCTAssertTrue(false, "Warning, the Clothing nav Item should have unwrapped children")
//            return
//        }
//        
//        XCTAssertEqual(13, clothingChildren.count, "Warning, the clothingNavItem should have 9 children. Got: \(clothingChildren.count)")
//        
//        guard let newClothesNavItem = clothingChildren.first else {
//            XCTFail("clothing should have at least one child")
//            return
//        }
//        
//        XCTAssertEqual(newClothesNavItem.displayName, "New Arrivals", "Warning, should have displayName \"New Arrivals\". Got: \(newClothesNavItem.displayName)")
//        XCTAssertEqual(newClothesNavItem.slug, "clothes-new", "Warning, should have slug \"clothes-new\". Got: \(newClothesNavItem.slug)")
//        XCTAssertEqual(newClothesNavItem.itemId, "bedf9c4c-0a58-4896-e2da-209cfa10b9a8", "Warning, should have itemId \"bedf9c4c-0a58-4896-e2da-209cfa10b9a8\". Got: \(newClothesNavItem.itemId)")
//        XCTAssertEqual(newClothesNavItem.parentItemId, "aacc54f6-704e-6d89-db5f-21ee841b3946", "Warning, should have parentItemId \"aacc54f6-704e-6d89-db5f-21ee841b3946\". Got: \(newClothesNavItem.parentItemId)")
//        XCTAssertEqual(newClothesNavItem.parentSlug, "clothes", "Warning, should have parentSlug \"clothes\". Got: \(newClothesNavItem.parentItemId)")
//        XCTAssertEqual(newClothesNavItem.typeCode, NavigationItem.ItemType.browseItem, "Warning, should have a type \"\(NavigationItem.ItemType.browseItem)\". Got: \(newClothesNavItem.typeCode)")
//        XCTAssertFalse(newClothesNavItem.isGateway(), "Warning, should not be a gateway")
//        XCTAssertEqual(newClothesNavItem.categoryId, "CLOTHES-NEW", "Warning, should have categoryId \"CLOTHES-NEW\". Got: \(newClothesNavItem.categoryId)")
//        XCTAssertNotNil(newClothesNavItem.children, "Warning, children should be nil")
//        
//        XCTAssertFalse(newClothesNavItem.isEqual(clothingNavItem))
//        XCTAssert(newClothesNavItem.isEqual(newClothesNavItem))
//        
//        XCTAssert(newClothesNavItem != clothingNavItem)
//        XCTAssert(newClothesNavItem == newClothesNavItem)
//        
//        XCTAssertNotNil(clothingNavItem.containerInfo, "clothingNavItem containerInfo should not be nil")
//        XCTAssert(clothingNavItem.containerInfo?.count == 1, "clothingNavItem containerInfo should have 1 item. Got \(clothingNavItem.containerInfo?.count)")
//        
//        XCTAssertNil(newClothesNavItem.containerInfo, "newClothesNavItem containerInfo should be nil")
//        
//        guard let containerKey = clothingNavItem.containerInfo?.first else {
//            XCTFail("clothingNavItem.containerInfo?.first should be here.")
//            return
//        }
//        
//        XCTAssertEqual(containerKey, "features-clothing", "The first item in clothingNavItem should be \"features-clothing\". Got \(containerKey)")
//        
//        guard let containers = testNavResponse?.containers else {
//            XCTFail("Containers should be here damn it")
//            return
//        }
//        
//        XCTAssertEqual(containers.count, 1, "There should be only one container. Instead there are \(containers.count)")
//        
//        guard let clothesContainer = containers[containerKey] else {
//            XCTFail("There should be a container with a key of: \(containerKey)")
//            return
//        }
//        
//        XCTAssertEqual(clothesContainer.count, 2, "The clothes container should have 2 top level nav items. Instead there are \(clothesContainer.count)")
    }
    
    func testBrokenMainNavigationItems() {
//        guard let json = jsonFor("BrokenMainNavigationItemJSON") else { return }
//        do {
//            let _ = try NavigationResponse.decode(json)
//        }
//        catch {
//            XCTAssertNotNil(error, "Navigation response missing main navigation shouold fail")
//        }
    }
    
    func testBrokenChildNavigationItems() {
//        guard let json = jsonFor("BrokenChildNavigationItemJSON") else { return }
//        do {
//            let navigationResponse = try NavigationResponse.decode(json)
//            let mainChildren = navigationResponse.navigationItems
//            XCTAssert(mainChildren.count == 1, "Warning - should have 1 main children because help & info was corrupt")
//        }
//        catch {
//            XCTFail("Error decoding item: \(error)")
//        }
    }
}
