//
//  CityViewController+TableViewDataSource.swift
//  MamiCamp
//
//  Created by icungse on 08/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import UIKit

extension CityViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityTableView", for: indexPath) as! CityTableViewCell
        
        cell.cityLabel.text = self.viewModel.cities[indexPath.row].city
        
        cell.cityImageView.loadImageUrl(url: self.viewModel.cities[indexPath.row].imageUrl)
        return cell
    }
    
    
}
