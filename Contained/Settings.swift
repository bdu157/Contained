//
//  Settings.swift
//  Contained
//
//  Created by Dongwoo Pae on 5/7/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()    //computed property
    
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
