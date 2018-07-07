//
//  persoon.swift
//  Applicatie_1_DennisVanMalder
//
//  Created by student on 04/07/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class persoon{
        var voornaam: String
        var naam: String
        var foto: String
        var straat: String
        var nummer: String
        var postcode: String
        var gemeente: String
        var latitude: Double
        var longtitude: Double
        var telefoon: String
        
        init() {
            voornaam = ""
            naam = ""
            foto = ""
            straat = ""
            nummer = ""
            postcode = ""
            gemeente = ""
            latitude = 0.00
            longtitude = 0.00
            telefoon = ""
        }
        
        init
            (voornaam: String,
            naam:String,
            foto: String,
            straat: String,
            nummer: String,
            postcode: String,
            gemeente: String,
            latitude: Double,
            longtitude: Double,
            telefoon: String)
        {
            self.voornaam = voornaam
            self.naam = naam
            self.foto = foto
            self.straat = straat
            self.nummer = nummer
            self.postcode = postcode
            self.gemeente = gemeente
            self.latitude = latitude
            self.longtitude = longtitude
            self.telefoon = telefoon
        }
}
