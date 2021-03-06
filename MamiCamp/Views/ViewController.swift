//
//  ViewController.swift
//  MamiCamp
//
//  Created by icungse on 05/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var clickMeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func onClick(_ sender: Any) {
        clickMeButton.setTitle("Oke", for: .normal)
        if textLabel.textColor == UIColor.black {
            textLabel.textColor = UIColor.red
        } else {
            textLabel.textColor = UIColor.black
        }
        
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "CityViewController") as? CityViewController {
            self.show(controller, sender: self)
        } else {
            print("Something wrong opening next page")
        }
        
    }
    
    @IBAction func openRegister(_ sender: UIButton) {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as? RegisterViewController {
            self.show(controller, sender: self)
        } else {
            print("Something wrong opening next page")
        }
    }
    
}

