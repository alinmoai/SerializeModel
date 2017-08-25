//
//  GeofenceInfo.swift
//  MDMiOSClient
//
//  Created by ChingPan on 2017/5/31.
//  Copyright © 2017年 jeffwang. All rights reserved.
//

import UIKit
import SerializeModel

class Equipment: SerializeModel {
    var name:String = ""
    var value:Int = -1
    
    init(name:String, value:Int) {
        self.value = value
        self.name = name
        super.init()
    }
    
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)
    }

}
