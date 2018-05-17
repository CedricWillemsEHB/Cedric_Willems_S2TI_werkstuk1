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
    var foto : String?
    var adres : Adres
    var telefoonnummer : String
    var gps : String?
    
    init(naam : String, voornaam : String, telefoonnummer: String, adres :Adres) {
        self.naam = naam
        self.voornaam = voornaam
        self.telefoonnummer = telefoonnummer
        self.adres = adres
    }
}
