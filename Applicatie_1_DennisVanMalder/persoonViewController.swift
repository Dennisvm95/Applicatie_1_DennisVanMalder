//
//  persoonViewController.swift
//  Applicatie_1_DennisVanMalder
//
//  Created by student on 04/07/2018.
//  Copyright © 2018 student. All rights reserved.
//

import CoreLocation
import UIKit
import MapKit
class persoonViewController: UIViewController, MKMapViewDelegate {

    
    var p = persoon()
    
    //links
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var voornaam: UILabel!
    @IBOutlet weak var telefoon: UILabel!
    @IBOutlet weak var adres: UILabel!
    @IBOutlet weak var coords: UILabel!
    @IBOutlet weak var achternaaam: UILabel!

    //https://stackoverflow.com/questions/29583232/how-do-you-change-an-ibaction-uibuttons-image-in-swift
    
    //Zooming on on image
    //code overgenomen van : https://stackoverflow.com/questions/51006224/image-only-goes-full-screen-one-time
    
    @IBAction func imageTap(_ sender: UITapGestureRecognizer) {
        let imageView = sender.view as! UIImageView
        let newImageView = UIImageView(image: imageView.image)
        newImageView.frame = UIScreen.main.bounds
        newImageView.backgroundColor = .black
        newImageView.contentMode = .scaleAspectFit
        newImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(goback))
        newImageView.addGestureRecognizer(tap)
        self.view.addSubview(newImageView)
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = true
    }
    //zooming out again
    //code overgenomen van : https://stackoverflow.com/questions/51006224/image-only-goes-full-screen-one-time
    
    @objc func goback(_ sender: UITapGestureRecognizer) {
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = false
        sender.view?.removeFromSuperview()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.achternaaam.text = p.naam
        self.voornaam.text = p.voornaam
        self.foto.image = UIImage(named: p.foto)
        self.telefoon.text = p.telefoon
        self.adres.text = p.straat + " " + p.nummer + "\n" + p.gemeente + " " + p.postcode
        self.coords.text = "Coordinates: " + p.latitude.description + "   " + p.longtitude.description
        
        //location
        let location = CLLocationCoordinate2DMake(p.latitude, p.longtitude)
        //https://stackoverflow.com/questions/7629486/mkcoordinatespanmake-why-specify-longitude-and-latitude-delta
        
        let span = MKCoordinateSpanMake(0.2, 0.2)
        let region = MKCoordinateRegion(center: location, span: span)
        
        map.setRegion(region, animated: true)
        // image zoom, documentation: https://www.youtube.com/watch?v=fo3nSRBWfRA&t=91s
        // https://stackoverflow.com/questions/29202882/how-do-you-make-an-uiimageview-on-the-storyboard-clickable-swift
        
        //define annotations
        let annotation:annotations = annotations(coordinate: location, title: "Here i am", subtitle: p.voornaam + "'s place")
        //add annotations here
        map.addAnnotation(annotation)
        
        
        
        

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
