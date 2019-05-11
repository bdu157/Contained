//
//  Settings.swift
//  Contained
//
//  Created by Dongwoo Pae on 5/7/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import Foundation

class Settings: Codable {
    static var shared = Settings()    //computed property  //this property is available for the rest.
    
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false

    var crabName: String? = "HappyCrab"
}
