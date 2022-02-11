//
//  Location+CoreDataProperties.swift
//  MyLocations
//
//  Created by Katellyn Hyker on 2/10/22.
//
//

import Foundation
import CoreData
import CoreLocation


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var date: Date
    @NSManaged public var category: String
    @NSManaged public var placemark: CLPlacemark?
    @NSManaged public var locationDescription: String

}

extension Location : Identifiable {

}