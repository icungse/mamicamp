//
//  AnyViewExtension.swift
//  MamiCamp
//
//  Created by icungse on 19/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import Foundation
import UIKit
import AlamofireImage
import Alamofire

extension UIImageView{
    func loadImageUrl(url: String) {
        print("image load : \(url)")

        Alamofire.request("\(NetworkFacade.baseUrl)\(url)").responseImage { response in
//            return response.result.value
            self.image = response.result.value

        }

//        if let image = NetworkFacade.loadImage(url: url) {
//            self.image = image
//        }
    }
}
