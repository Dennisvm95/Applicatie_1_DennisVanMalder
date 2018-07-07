//
//  annotations.swift
//  Applicatie_1_DennisVanMalder
//
//  Created by student on 04/07/2018.
//  Copyright © 2018 student. All rights reserved.
//

import MapKit
import UIKit

class annotations: NSObject,
    MKAnnotation
{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(
        coordinate: CLLocationCoordinate2D,
        title:String?,
        subtitle: String?)
    {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
    
    
}

