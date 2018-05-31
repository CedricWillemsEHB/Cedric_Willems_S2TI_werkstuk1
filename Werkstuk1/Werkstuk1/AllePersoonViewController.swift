//
//  AllePersoonViewController.swift
//  Werkstuk1
//
//  Created by WILLEMS Cédric (s) on 31/05/2018.
//  Copyright © 2018 WILLEMS Cédric (s). All rights reserved.
//

import UIKit
import MapKit

class AllePersoonViewController: UIViewController,  MKMapViewDelegate {
    
    var personen : Array<Persoon> = []

    @IBOutlet weak var AllePersoonMaps: MKMapView!
    var locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let photo1 = #imageLiteral(resourceName: "persoon1")
        let photo2 = #imageLiteral(resourceName: "persoon2")
        let photo3 = #imageLiteral(resourceName: "persoon3")
        let adres1 = Adres(straat: "Maria van Hongarijelaan", huisnummer: "13", postcode: "1070", gemeente: "Ganshoren")
        let adres2 = Adres(straat: "de Lignestraat", huisnummer: "27", postcode: "1000", gemeente: "Brussel")
        let adres3 = Adres(straat: "Atrebatenstraat", huisnummer: "156", postcode: "1040", gemeente: "Etterbeek")
        let persoonprofiel1 = Persoon(naam : "Myself", voornaam : "Me", telefoonnummer: "04 75 89 98 13", adres : adres1, foto : photo1, latitude : 50.84210, longitude : 4.32226)
        let persoonprofiel2 = Persoon(naam : "Roselaar", voornaam : "Stijn", telefoonnummer: "04 77 69 98 13", adres : adres2, foto : photo2, latitude : 50.85321, longitude : 4.31758)
        let persoonprofiel3 = Persoon(naam : "Verstaeten", voornaam : "Cedric", telefoonnummer: "04 88 55 22 13", adres : adres3, foto : photo3,  latitude : 50.85543, longitude : 4.35591)
        personen = [persoonprofiel1, persoonprofiel2, persoonprofiel3]
        
        for pers in personen {
            locationManager.requestAlwaysAuthorization()
            
            locationManager.startUpdatingLocation()
            
            let location = CLLocationCoordinate2D(latitude: pers.latitude, longitude: pers.longitude)
            let myAnnotation = LocatieAnnotation(coordinate: location)
            
            AllePersoonMaps.addAnnotation(myAnnotation)
        }
        
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
