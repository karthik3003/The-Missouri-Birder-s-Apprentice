//
//  County.swift
//  The Missouri Birder's Apprentice
//
//  Created by Karthik Laddipeerla on 10/14/17.
//  Copyright © 2017 Laddipeerla,Karthik. All rights reserved.
//

import Foundation
class County {
    var name:String
    var birds:[Bird]
    
    init(name:String, birds:[Bird]) {
        self.name = name
        self.birds = birds
    }
    
    
}
