//
//  ViewController.swift
//  SerializeModel
//
//  Created by alinmoai on 08/25/2017.
//  Copyright (c) 2017 alinmoai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gemLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var vipLabel: UILabel!
    
    @IBAction func btnClick(_ sender: Any) {
        levelUp()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        
        print(UserData.sharedInstance)
    }
    
    func updateView() {
        let userData = UserData.sharedInstance

        gemLabel.text = "Gem : " + userData.gem.description
        moneyLabel.text = "Money : " + userData.money.description
        vipLabel.text = userData.isVIP ? "VIP : YES" : "VIP : No"
    }
    
    func levelUp() {
        let userData = UserData.sharedInstance
        userData.gem += 50
        userData.money += 1000
        
        let unit = CharUnit(name:"testUnit")
        
        unit.equipments.append(Equipment(name:"testEQ",value:userData.money))
        
        userData.units.append(unit)
        if(userData.gem > 100) {
            userData.isVIP = true
        }
        userData.saveData();
        updateView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

