//
//  HungerViewController.swift
//  #SaveTheWorld
//
//  Created by Tyler Bakke on 7/7/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class HungerViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    let regionRadius: CLLocationDistance = 1000
    let request = MKLocalSearchRequest()
    var matchingItems: [MKMapItem] = [MKMapItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled(){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
            
            let lat = locationManager.location!.coordinate.latitude
            let long = locationManager.location!.coordinate.longitude
            let initialLocation = CLLocation(latitude: lat, longitude: long)
            centerMapOnLocation(initialLocation)
            mapView.showsUserLocation = true
            
            request.naturalLanguageQuery = "Food Bank"
            request.region = mapView.region
            
            let search = MKLocalSearch(request: request)
            
            search.startWithCompletionHandler({ (response: MKLocalSearchResponse?, error: NSError?) in
                if error != nil {
                    print("Error occured in search: \(error!.localizedDescription)")
                } else if response!.mapItems.count == 0 {
                    print("No p found")
                } else {
                    print("Matches found")
                
                    // Display found locations if there are no errors
                    for item in response!.mapItems {
                        self.matchingItems.append(item as MKMapItem)
                        let annotation = MKPointAnnotation()
                        annotation.coordinate = item.placemark.coordinate
                        annotation.title = item.name
                        self.mapView.addAnnotation(annotation)
                    }
                }
           })
        
        }
    }

    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
