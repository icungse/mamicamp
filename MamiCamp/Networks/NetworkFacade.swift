//
//  NetworkFacade.swift
//  MamiCamp
//
//  Created by icungse on 14/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import Alamofire
import Alamofire_SwiftyJSON
import SwiftyJSON

class NetworkFacade{
    static func callGetApi(url: String, parameters: [String: String] = [:], callback: @escaping (JSON) -> ()){
        Alamofire.request(url, method: .get, parameters: parameters, encoding: URLEncoding.default).responseSwiftyJSON {
            dataResponse in
            callback(dataResponse.result.value!)
            
        }
    }
}
