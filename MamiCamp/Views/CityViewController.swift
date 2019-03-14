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
    
    lazy var viewModel = CityViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityTableView.dataSource = self
        cityTableView.delegate = self
        viewModel.delegate = self
        viewModel.loadCities()
    }
}

extension CityViewController: CityViewModelDelegate {
    func onCitiesLoaded() {
        self.cityTableView.reloadData()
    }
}
