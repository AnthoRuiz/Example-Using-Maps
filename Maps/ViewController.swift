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
      
      let coordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longitud)
      
      let region: MKCoordinateRegion = MKCoordinateRegion(center: coordinates, span: span)
      
      map.setRegion(region, animated: true)
      
      let annotation = MKPointAnnotation()
      
      annotation.title = "Taj Mahal"
      annotation.subtitle = "Lore Lore Lore"
      annotation.coordinate = coordinates
      map.addAnnotation(annotation)
      
      let lpgr = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longPress(gesture:)))
      
      lpgr.minimumPressDuration = 2
      map.addGestureRecognizer(lpgr)
      
      
      // Do any additional setup after loading the view, typically from a nib.
   }
   
   @objc func longPress(gesture: UIGestureRecognizer) {
      
      let touchPoint = gesture.location(in: self.map)
      let coordinate = map.convert(touchPoint, toCoordinateFrom: self.map)
      
      let annotacion = MKPointAnnotation()
      
      annotacion.coordinate = coordinate
      annotacion.title = "new tittle"
      annotacion.subtitle = "Lore Lore"
      map.addAnnotation(annotacion)
      
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }


}

