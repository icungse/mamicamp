//
//  AreaModel.swift
//  MamiCamp
//
//  Created by icungse on 14/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import Foundation
import SwiftyJSON

class AreaModel {
    var coordinate = [CoordinateModel]()
    var name = ""
    
    init() {
        
    }
    
    required init(object: JSON) {
        
        self.name = object["name"].stringValue
        
        for coordinateJson in object["coordinate"].arrayValue {
            let coordinate = CoordinateModel()
            coordinate.latitude = coordinateJson[0].doubleValue
            coordinate.longtitude = coordinateJson[1].doubleValue
            
            self.coordinate.append(coordinate)
        }
        
    }
}
