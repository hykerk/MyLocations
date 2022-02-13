//
//  MapViewController.swift
//  MyLocations
//
//  Created by Katellyn Hyker on 2/12/22.
//

import Foundation
import UIKit
import MapKit
import CoreData

class MapViewController: UIViewController {
    @IBOutlet var mapView:MKMapView!
    var managedObjectContext: NSManagedObjectContext!
    var locations = [Location]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLocations()
    }
    
    //MARK: - Actions
    @IBAction func showUser() {
        let region = MKCoordinateRegion(center:mapView.userLocation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(mapView.regionThatFits(region), animated: true)
    }
    @IBAction func showLocations() {
        
    }
    //MARK: - Helper Delegates
    func updateLocations() {
        mapView.removeAnnotations(locations)
        let entity = Location.entity()
        let fetchRequest = NSFetchRequest<Location>()
        fetchRequest.entity = entity
        locations = try! managedObjectContext.fetch(fetchRequest)
        mapView.addAnnotations(locations)
    }
}
extension MapViewController: MKMapViewDelegate{
    
}
