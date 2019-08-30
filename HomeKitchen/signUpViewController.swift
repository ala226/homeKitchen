//
//  signUpViewController.swift
//  HomeKitchen
//
//  Created by Eng.lolla on 8/19/19.
//  Copyright © 2019 Eng.lolla. All rights reserved.
//

import UIKit

class signUpViewController: UIViewController {
    @IBOutlet weak var imgehome: UIImageView!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var comfriempass: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
imgehome.layer.cornerRadius = imgehome.frame.size.width/2
        
        signUpButton.layer.cornerRadius = 24
        
        email.layer.borderColor = #colorLiteral(red: 0.9992869496, green: 0.2775602937, blue: 0.4905285835, alpha: 1)
        email.layer.borderWidth = 2.0
        email.layer.cornerRadius = 20
        
        name.layer.borderColor = #colorLiteral(red: 0.9992869496, green: 0.2775602937, blue: 0.4905285835, alpha: 1)
        name.layer.borderWidth = 2.0
        name.layer.cornerRadius = 20
        
        password.layer.borderColor = #colorLiteral(red: 0.9992869496, green: 0.2775602937, blue: 0.4905285835, alpha: 1)
        password.layer.borderWidth = 2.0
        password.layer.cornerRadius = 20
        
        comfriempass.layer.borderColor = #colorLiteral(red: 0.9992869496, green: 0.2775602937, blue: 0.4905285835, alpha: 1)
        comfriempass.layer.borderWidth = 2.0
        comfriempass.layer.cornerRadius = 20
        
        
     
    }
    



}
