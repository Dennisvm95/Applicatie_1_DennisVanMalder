//
//  persoonSingleton.swift
//  Applicatie_1_DennisVanMalder
//
//  Created by student on 04/07/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class persoonSingleton {
    static let instance = persoonSingleton()
    
    private var personen = [persoon]()
    
    private init(){
        self.personen = [
            persoon(voornaam: "Billy", naam: "Joel", foto: "billy", straat: "billystraat", nummer: "1", postcode: "1500", gemeente: "Halle", latitude: 50.0,longtitude: -100.0, telefoon: "0474111111"),
            persoon(voornaam: "Freddie", naam: "Mercury", foto: "freddie", straat: "freddiestraat", nummer: "2", postcode: "1651", gemeente: "Lot", latitude: 51.0, longtitude: -101.0, telefoon: "0474222222"),
            persoon (voornaam: "Bryan", naam: "Adams", foto: "bryan", straat: "bryanStraat", nummer: "3", postcode: "1000", gemeente: "Brussel", latitude: 50.85045,longtitude: 4.34878, telefoon: "0474089966")
        ]
    }
    
    public func getPersonen() -> [persoon]{
        return self.personen
    }
    
    
}
