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
import AlamofireImage

class NetworkFacade{
    static let baseUrl = "https://mamikos.com/"

    static func callGetApi(url: String, parameters: [String: String] = [:], callback: @escaping (JSON) -> ()){
        Alamofire.request(url, method: .get, parameters: parameters, encoding: URLEncoding.default).responseSwiftyJSON {
            dataResponse in
            callback(dataResponse.result.value!)
            
        }
    }
    
    static func callPostApi(url: String, parameters: [String: String] = [:], callback: @escaping (JSON) -> ()) {
        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default)
            .responseSwiftyJSON { (responseData) in
                guard let value = responseData.result.value else {
                    return
                }
                
                callback(value)
        }
    }
    
    static func loadImage(url: String) -> Image? {
//        print("iamgeurl : \(baseUrl)\(url)")
        Alamofire.request("\(baseUrl)\(url)").responseImage { response in
            return response.result.value
        }
        return UIImage(named: "ui")
    }
}
