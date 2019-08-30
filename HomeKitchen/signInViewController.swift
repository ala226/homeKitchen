//
//  signInViewController.swift
//  HomeKitchen
//
//  Created by Eng.lolla on 8/19/19.
//  Copyright © 2019 Eng.lolla. All rights reserved.
//

import UIKit

class signInViewController: UIViewController {

    @IBOutlet weak var imgdesset: UIImageView!
    
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var email: UITextField!
   
    @IBOutlet weak var signinbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgdesset.layer.cornerRadius = imgdesset.frame.size.width/2
        signinbutton.layer.cornerRadius = 20
        pass.layer.borderWidth = 2
        pass.layer.borderColor = #colorLiteral(red: 0.9992869496, green: 0.2775602937, blue: 0.4905285835, alpha: 1)
        pass.layer.cornerRadius = 15
        email.layer.borderWidth = 2
        email.layer.borderColor = #colorLiteral(red: 0.9992869496, green: 0.2775602937, blue: 0.4905285835, alpha: 1)
        email.layer.cornerRadius = 15

    }
    



}
