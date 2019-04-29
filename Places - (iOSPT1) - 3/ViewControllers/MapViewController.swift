//
//  MapViewController.swift
//  Places - (iOSPT1) - 3
//
//  Created by Dongwoo Pae on 4/28/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit
import MapKit  //dont forget to import MapKit!!!


class MapViewController: UIViewController {


    @IBOutlet weak var mapView: MKMapView!
    
    
    var place : Place?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateMapLocation()
    }
    
    private func updateMapLocation() {
        guard let place = self.place,
            isViewLoaded else {return}
        
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        let coordinate = CLLocationCoordinate2D(latitude: place.location.latitude, longitude: place.location.longitude)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        mapView.setRegion(region, animated: true)
     }
    
}



