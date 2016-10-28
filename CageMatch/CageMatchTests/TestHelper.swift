//
//  URBNTestHelper.swift
//  URBNSwiftyModels
//
//  Created by Kevin Taniguchi on 3/27/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest

class Helpers {
    static func jsonFor(_ path: String, ext: String = "json") -> Any? {
        guard let path = Bundle(for: Helpers.self).url(forResource: path, withExtension: ext), let data = try? Data(contentsOf: path) else { return nil }
        
        return try? JSONSerialization.jsonObject(with: data, options: [])
    }
    
    static func jsonDataFor(_ path: String, ext: String = "json") -> Any? {
        guard let path = Bundle(for: Helpers.self).url(forResource: path, withExtension: ext), let data = try? Data(contentsOf: path) else { return nil }
        
        return data
    }
}
