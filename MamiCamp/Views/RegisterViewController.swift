//
//  RegisterViewController.swift
//  MamiCamp
//
//  Created by icungse on 19/03/19.
//  Copyright © 2019 icung. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onDone(_ sender: UIButton) {
        if (IsDataValid()) {
            let postParam: [String : String] = [
                "name" : firstNameTextField.text!,
                "salary" : "12123213",
                "age" : "21"
            ]
            NetworkFacade.callPostApi(url: "http://dummy.restapiexample.com/api/v1/create", parameters: postParam) { (json) in
                print("Json \(json)")
            }
            
        }
    }
    
    private func IsDataValid() -> Bool {
        var isValid = false
        if (firstNameTextField.text?.isEmpty == true) {
            print("Nama depan harus diisi")
        } else if (firstNameTextField.text!.count < 3) {
            print("Nama depan harus lebih dari 3 karakter")
        } else if (firstNameTextField.text?.isEmpty == true) {
            print("Nama depan harus lebih dari 3 karakter")
        } else {
            isValid = true
        }
        
        return isValid
    }
    
}
