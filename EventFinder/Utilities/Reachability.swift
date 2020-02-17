//
//  Reachability.swift
//  EventFinder
//
//  Created by German Hernandez on 17/02/2020.
//  Copyright © 2020 German Hernandez. All rights reserved.
//

import Foundation
import CoreLocation

struct Reachability {
    
    static func isLocationServiceEnabled() -> Bool {
        if CLLocationManager.locationServicesEnabled() {
            switch CLLocationManager.authorizationStatus() {
            case .notDetermined, .restricted, .denied:
                return false
            case .authorizedAlways, .authorizedWhenInUse:
                return true
            default:
                return false
            }
        } else {
            return false
        }
    }
}
