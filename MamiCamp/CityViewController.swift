//
//  CityViewController.swift
//  MamiCamp
//
//  Created by icungse on 08/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {
    @IBOutlet weak var cityTableView: UITableView!
    
    let cities = ["Yogyakarta", "Bandung", "Jakarta", "Solo", "Semarang"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityTableView.dataSource = self
        
    }
}
