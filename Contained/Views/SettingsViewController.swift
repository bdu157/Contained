//
//  SettingsViewController.swift
//  Contained
//
//  Created by Dongwoo Pae on 5/7/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//
import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
    //you do not need to create this instance because share static property in Settings model is available without having to set an instance like we have been.
    //let shared = Settings.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //switch for HappyCrab and WaitingCrab
    
    @IBAction func toggleCrabs(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.crabName = "WaitingCrab"
        } else {
            Settings.shared.crabName = "HappyCrab"
        }
    }
    //switch buttons
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldRoll = true
          
            /*
             testing if this above actually changes boolean value of shouldRoll property
             let output = shared.shouldRoll
             print(output)
            */
        } else {
            Settings.shared.shouldRoll = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldZoom = true
        } else {
            Settings.shared.shouldZoom = false
        }
    }
}
