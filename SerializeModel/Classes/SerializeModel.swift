//
//  SerializeModel.swift
//  MDMiOSClient
//
//  Created by jeffwang on 07/07/2017.
//  Copyright © 2017 jeffwang. All rights reserved.
//

import UIKit

open class SerializeModel: NSObject, NSCoding{
    
    public override init() {
        super.init()
    }
    
    required public init(coder decoder: NSCoder) {
        super.init()
        let properties = propertyNames();
        for propertyName in properties {
            self.setValue(decoder.decodeObject(forKey: propertyName) , forKey: propertyName)
        }
    }
    
    public func encode(with coder: NSCoder) {
        let properties = propertyNames();
        for propertyName in properties {
           coder.encode(self.value(forKey: propertyName), forKey: propertyName)
        }
    }
    
    func propertyNames() -> [String] {
        return Mirror(reflecting: self).children.flatMap() {$0.label}
    }
}
