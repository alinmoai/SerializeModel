//
//  LocationInfoModel.swift
//  MDMiOSClient
//
//  Created by ChingPan on 2017/5/31.
//  Copyright © 2017年 jeffwang. All rights reserved.
//

import UIKit
import SerializeModel

class CharUnit: SerializeModel {
    var equipments:[Equipment] = []
    var name:String = ""
    
    init(name:String) {
        self.name = name
        super.init()
    }
    
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)
    }
}
