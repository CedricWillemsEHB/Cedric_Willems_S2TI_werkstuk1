//
//  locatieAnnotation.swift
//  Werkstuk1
//
//  Created by WILLEMS Cédric (s) on 31/05/2018.
//  Copyright © 2018 WILLEMS Cédric (s). All rights reserved.
//

import UIKit
import MapKit

class LocatieAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D

    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
        
    }
}
