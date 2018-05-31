//
//  Persoon.swift
//  Werkstuk1
//
//  Created by WILLEMS Cédric (s) on 17/05/2018.
//  Copyright © 2018 WILLEMS Cédric (s). All rights reserved.
//

import UIKit

class Persoon: NSObject {

    var naam : String
    var voornaam : String
    var foto : UIImage
    var adres : Adres
    var telefoonnummer : String
    var latitude : Double
    var longitude : Double
    
    init(naam : String, voornaam : String, telefoonnummer: String, adres :Adres, foto : UIImage, latitude : Double, longitude : Double) {
        self.naam = naam
        self.voornaam = voornaam
        self.telefoonnummer = telefoonnummer
        self.adres = adres
        self.foto = foto
        self.latitude = latitude
        self.longitude = longitude
    }
}
