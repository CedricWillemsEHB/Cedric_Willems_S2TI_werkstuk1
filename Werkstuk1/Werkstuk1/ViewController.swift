//
//  ViewController.swift
//  Werkstuk1
//
//  Created by WILLEMS Cédric (s) on 17/05/2018.
//  Copyright © 2018 WILLEMS Cédric (s). All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate{

    @IBOutlet weak var fotoiv: UIImageView!
    @IBOutlet weak var naamlbl: UILabel!
    @IBOutlet weak var voornaamlbl: UILabel!
    @IBOutlet weak var telefoonlbl: UILabel!
    @IBOutlet weak var straatlbl: UILabel!
    @IBOutlet weak var nummerlbl: UILabel!
    @IBOutlet weak var postlbl: UILabel!
    @IBOutlet weak var gemeentelbl: UILabel!
    @IBOutlet weak var mapsmv: MKMapView!
    var persoon: Persoon?
    var personen : Array<Persoon> = []
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fotoiv.image = persoon?.foto
        naamlbl.text = persoon?.naam
        voornaamlbl.text = persoon?.voornaam
        telefoonlbl.text = persoon?.telefoonnummer
        straatlbl.text = persoon?.adres.straat
        nummerlbl.text = persoon?.adres.huisnummer
        postlbl.text = persoon?.adres.postcode
        gemeentelbl.text = persoon?.adres.gemeente
        
        locationManager.requestAlwaysAuthorization()
        
        locationManager.startUpdatingLocation()
        
        let location = CLLocationCoordinate2D(latitude: (persoon?.latitude)!, longitude: (persoon?.longitude)!)
        let myAnnotation = LocatieAnnotation(coordinate: location)
        
        mapsmv.addAnnotation(myAnnotation)
        
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

