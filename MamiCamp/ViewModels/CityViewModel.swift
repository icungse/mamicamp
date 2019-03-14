//
//  CityViewModel.swift
//  MamiCamp
//
//  Created by icungse on 14/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol CityViewModelDelegate {
    func onCitiesLoaded()
}



class CityViewModel {
    
    var delegate: CityViewModelDelegate?
    var cities = [CityModel]()
    
    func loadCities(){
        NetworkFacade.callGetApi(url: "https://mamikos.com/garuda/area", parameters: [:]) { (json) in
            for object in json["campus"].arrayValue {
                let city = CityModel(object: object)
                
                self.cities.append(city)
                
                print("cities :  \(self.cities)")
                print("cities :  \(city.area)")
            }
            
            self.delegate?.onCitiesLoaded()
        }
    }
}
