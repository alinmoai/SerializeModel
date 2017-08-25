//
//  DeviceData.swift
//  MDMiOSClient
//
//  Created by jeffwang on 06/07/2017.
//  Copyright © 2017 jeffwang. All rights reserved.
//

import UIKit
import SerializeModel

class UserData: SerializeModel {
    
    static var sharedInstance : UserData = {
        var instance:UserData = UserData()
        if let data = UserDefaults.standard.data(forKey: "userData"),
            let userData = NSKeyedUnarchiver.unarchiveObject(with: data) as? UserData {
            instance = userData
        } else {
            instance = UserData()
            print("load userData failed")
        }
        return instance
    }()
    
    var units:[CharUnit] = []
    var money:Int = 0
    var gem:Int = 0
    var isVIP:Bool = false
    
    func saveData() {
        let encodedData = NSKeyedArchiver.archivedData(withRootObject: self)
        UserDefaults.standard.set(encodedData, forKey: "userData")
    }
}
