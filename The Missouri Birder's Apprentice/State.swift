//
//  State.swift
//  The Missouri Birder's Apprentice
//
//  Created by Karthik Laddipeerla on 10/14/17.
//  Copyright © 2017 Laddipeerla,Karthik. All rights reserved.
//

import Foundation
import CoreLocation

struct State {
    static var counties:[County] = [County(name: "Nodaway County", birds:[Bird(name: "American goldfinch", latinName: "Spinus tristis", location: CLLocationCoordinate2DMake(12.54, 34.43), dateFirstSighted: "04-05-1992", numberOfSightings: 4, description: "first bird"), Bird(name: "Sparrow", latinName: "Passeridae", location: CLLocationCoordinate2D(latitude: 34.56, longitude: 45.65), dateFirstSighted: "09-08-1990", numberOfSightings: 2, description: "Second bird"), Bird(name: "Blue Grosbeak", latinName: "Passerina Caerulea", location: CLLocationCoordinate2D(latitude: 45.78, longitude: 58.76), dateFirstSighted: "09-07-1991", numberOfSightings: 1, description: "third bird")]), County(name: "Bates County", birds: [Bird(name: "Eastern Bluebird", latinName: "Sialia sialis", location: CLLocationCoordinate2D(latitude: 67.77, longitude: 78.89), dateFirstSighted: "03-12-1987", numberOfSightings: 2, description: "fourth bird"), Bird(name: "Greater Prairie Chicken", latinName: "Tympanuchus cupido cupido", location: CLLocationCoordinate2D(latitude: 65.43, longitude: 57.56), dateFirstSighted: "09-01-1967", numberOfSightings: 2, description: "fifth bird"), Bird(name: "Least Tern", latinName: "Sternula antillarum", location: CLLocationCoordinate2D(latitude: 78.65, longitude: 87.87), dateFirstSighted: "04-04-1986", numberOfSightings: 8, description: "Sixth bird")]), County(name: "Hickory County", birds: [Bird (name: "Snow Goose", latinName: "Anser caerulescens", location: CLLocationCoordinate2D(latitude: 56.75, longitude: 54.65), dateFirstSighted: "11-30-1963", numberOfSightings: 0, description: "Seventh bird"), Bird(name: "Summer Tanager", latinName: "Piranga rubra", location: CLLocationCoordinate2D(latitude: 65.67, longitude: 68.56), dateFirstSighted: "10-23-1968", numberOfSightings: 8, description: "eighth bird"), Bird(name: "Swainsons Warbler", latinName: "Limnothlypis swainsonii", location: CLLocationCoordinate2D(latitude: 76.76, longitude: 78.98), dateFirstSighted: "05-15-1991", numberOfSightings: 10, description: "Final bird")])]
    
    static func numCounty()->Int {
        return counties.count
    }
    
    // returns a particular airline
    static func countyNum(_ index:Int) -> County {
        return counties[index]
    }
    
    
}
