//
//  CityModel.swift
//  MamiCamp
//
//  Created by icungse on 14/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import Foundation
import SwiftyJSON

class CityModel {
    let baseUrl = "https://mamikos.com"
    
    var imageUrl = ""
    var area = [AreaModel]()
    var city = ""
    
    init() {
        
    }
    
    required init(object: JSON) {
        self.imageUrl = object["image_url"].stringValue
        self.city = object["city"].stringValue
        
        for areaJson in object["area"].arrayValue {
            let area = AreaModel()
            area.name = areaJson["name"].stringValue
            
            for coordinateJson in areaJson["coordinate"].arrayValue {
                let coordinate = CoordinateModel()
                coordinate.latitude = coordinateJson[0].doubleValue
                coordinate.longtitude = coordinateJson[1].doubleValue
                
                area.coordinate.append(coordinate)
            }
            self.area.append(area)
        }
        
        
    }
}
