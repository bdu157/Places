//
//  Place.swift
//  Places - (iOSPT1) - 3
//
//  Created by Dongwoo Pae on 4/28/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import Foundation

class Place {
    var name: String
    var location: (latitude: Double, longitude: Double)
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.location = (latitude:latitude, longitude:longitude)
    }
}
