//
//  Bird.swift
//  The Missouri Birder's Apprentice
//
//  Created by Karthik Laddipeerla on 10/14/17.
//  Copyright © 2017 Laddipeerla,Karthik. All rights reserved.
//

import Foundation
import CoreLocation

class Bird: Equatable, CustomStringConvertible {
    static func ==(lhs: Bird, rhs: Bird) -> Bool {
        return true
    }
    
    var description: String
    
    var name:String
    var latinName:String
    var location:CLLocationCoordinate2D!
    var dateFirstSighted:Date
    var numberOfSightings:Int
 
    init(name:String, latinName:String, location:CLLocationCoordinate2D, dateFirstSighted:Date, numberOfSightings:Int) {
        self.name = name
        self.latinName = latinName
        self.location = location
        self.dateFirstSighted = dateFirstSighted
        self.numberOfSightings = numberOfSightings
    }
}
