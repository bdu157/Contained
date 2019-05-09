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
    
    let shared = Settings.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //switch buttons
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn {
            shared.shouldRoll = true
          
            /*
             testing if this above actually changes boolean value of shouldRoll property
             let output = shared.shouldRoll
             print(output)
            */
        } else {
            shared.shouldRoll = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn {
            shared.shouldZoom = true
        } else {
            shared.shouldZoom = false
        }
    }
}
