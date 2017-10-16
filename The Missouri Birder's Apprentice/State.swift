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
    static var counties:[County] = [County(name: "nodaway", birds:[Bird(name: "American goldfinch", latinName: "bisket", location: CLLocationCoordinate2DMake(12.54, 34.43), dateFirstSighted: "04-05-1992", numberOfSightings: 4, description: "first bird"), Bird(name: "Sparrow", latinName: "jack sparrow", location: CLLocationCoordinate2D(latitude: 34.56, longitude: 45.65), dateFirstSighted: "09-08-1990", numberOfSightings: 2, description: "Second bird")])]
    
    static func numCounty()->Int {
        return counties.count
    }
    
    // returns a particular airline
    static func countyNum(_ index:Int) -> County {
        return counties[index]
    }
    
    
}
