//
//  PlistReader.swift
//  popsy
//
//  Created by Maria Ortega on 28/03/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit

let apiEnpointsPLIST = "APIEndpoints"

class PlistReader: NSObject {

    static func getAPIEnpoint(key: String) -> String {

        let plistPath = Bundle.main.path(forResource: apiEnpointsPLIST, ofType: "plist")
        let plistData = FileManager.default.contents(atPath: plistPath!)
        var format = PropertyListSerialization.PropertyListFormat.xml

        let  plistDict = try! PropertyListSerialization.propertyList(from: plistData!,
                                                                     options: .mutableContainersAndLeaves,
                                                                     format: &format) as? [String : AnyObject]

        
        let value = plistDict?[key] as? String

        return value!
    }
    
}
