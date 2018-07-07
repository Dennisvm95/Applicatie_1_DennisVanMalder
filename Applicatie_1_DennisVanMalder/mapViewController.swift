//
//  mapViewController.swift
//  Applicatie_1_DennisVanMalder
//
//  Created by student on 04/07/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class mapViewController: UIViewController, CLLocationManagerDelegate {
    //links
    @IBOutlet weak var mainMap: MKMapView!
    
    
    //persoonlist verkrijgen / variables
    var personen = persoonSingleton.instance.getPersonen()
    let manager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        let span:MKCoordinateSpan = MKCoordinateSpanMake(100,100)
        let myLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        mainMap.setRegion(region, animated: true)
        self.mainMap.showsUserLocation = true
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // https://stackoverflow.com/questions/32072608/why-isnt-locationmanager-didupdatelocation-working
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        manager.pausesLocationUpdatesAutomatically = true
        //displayen van alle persoonannotations - loopen door array personen
        for p in personen
        {
        let location = CLLocationCoordinate2DMake(p.latitude, p.longtitude)
        let annotation:annotations = annotations(coordinate: location, title: p.voornaam  + "Here", subtitle: "stop stalking")
        mainMap.addAnnotation(annotation)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
