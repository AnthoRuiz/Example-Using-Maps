//
//  ViewController.swift
//  Maps
//
//  Created by Anthony Ruiz on 8/10/18.
//  Copyright © 2018 Jakaboy. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

   @IBOutlet weak var map: MKMapView!
   override func viewDidLoad() {
      super.viewDidLoad()
      
      let latitude: CLLocationDegrees = 27.1
      let longitud: CLLocationDegrees = 78.0
      let latDelta: CLLocationDegrees = 0.05
      let lonDelta: CLLocationDegrees = 0.05
      let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
      let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitud)
      let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
      
      map.setRegion(region, animated: true)
      
      
      // Do any additional setup after loading the view, typically from a nib.
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }


}

