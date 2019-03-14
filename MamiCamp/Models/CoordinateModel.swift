//
//  CoordinateModel.swift
//  MamiCamp
//
//  Created by icungse on 14/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import Foundation
import SwiftyJSON

class CoordinateModel {
    var latitude = 0.0
    var longtitude = 0.0
    
    init() {
        
    }
    
    required init(object: JSON) {
        self.latitude = object[0].doubleValue
        self.longtitude = object[1].doubleValue
    }
    
}
