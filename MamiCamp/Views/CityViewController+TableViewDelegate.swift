//
//  CityViewController+TableViewDelegate.swift
//  MamiCamp
//
//  Created by icungse on 12/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import Foundation
import UIKit

extension CityViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! CityTableViewCell
        cell.cityLabel.textColor = UIColor.red
        print("Ini \(self.viewModel.cities[indexPath.row])")
        
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "CampusViewController") as? CampusViewController {
            
            controller.titlePage = self.viewModel.cities[indexPath.row].city
            self.show(controller, sender: self)
        } else {
            print("Something wrong opening next page")
        }

    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! CityTableViewCell
        cell.cityLabel.textColor = UIColor.black
        print("Ini deselect \(self.viewModel.cities[indexPath.row])")
    }
}
