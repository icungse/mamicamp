//
//  CampusViewController.swift
//  MamiCamp
//
//  Created by icungse on 12/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import UIKit

class CampusViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var campusCollectionView: UICollectionView!
    
    var titlePage: String = ""
    var campusImage = ["its", "binus", "itb", "ui"]
    var campusName = ["ITS", "Binus", "ITB", "UI"]
    var campusAdress = ["Surabaya", "Jakarta", "Bandung", "Jakarta"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = titlePage
        campusCollectionView.register(UINib.init(nibName: "CampusCollViewCell", bundle: nil), forCellWithReuseIdentifier: "Campus")
        
        campusCollectionView.dataSource = self
        campusCollectionView.delegate = self
        
    }

}

extension CampusViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return campusName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Campus", for: indexPath) as! CampusCollectionViewCell
        
        cell.campusName.text = campusName[indexPath.row]
        cell.campusAdrress.text = campusAdress[indexPath.row]
        cell.campusImageView.image = UIImage.init(named: campusImage[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: (collectionView.bounds.width/2-20), height: 100)
    }
}
