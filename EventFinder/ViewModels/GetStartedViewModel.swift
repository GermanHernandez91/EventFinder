//
//  GetStartedViewModel.swift
//  EventFinder
//
//  Created by German Hernandez on 17/02/2020.
//  Copyright © 2020 German Hernandez. All rights reserved.
//

import SwiftUI
import Combine
import CoreLocation

class GetStartedViewModel: ObservableObject {
    
    @Published var locationIsEnabled: Bool = false
    
    var locationManager: CLLocationManager!
    
    init() {
        locationManager = CLLocationManager()
        locationIsEnabled = Reachability.isLocationServiceEnabled()
    }
    
    func getStartedButtonPressed() {
        locationManager.requestWhenInUseAuthorization()
        
        if Reachability.isLocationServiceEnabled() {
            UserDefaults.standard.set("yes", forKey: Constants.Keys.firstUse)
            locationIsEnabled = true
        }
    }
}
