//
//  PlaceController.swift
//  Places - (iOSPT1) - 3
//
//  Created by Dongwoo Pae on 4/28/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import Foundation

class PlaceController {
    private(set) var places : [Place] = []

    func createPlace(name: String, latitude: Double, longitude: Double) {
        let input = Place.init(name: name, latitude: latitude, longitude: longitude)
        places.append(input)
    }
}
