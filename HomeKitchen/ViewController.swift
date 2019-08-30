//
//  ViewController.swift
//  HomeKitchen
//
//  Created by Eng.lolla on 8/18/19.
//  Copyright © 2019 Eng.lolla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgicon: UIImageView!
    
    @IBOutlet weak var signin: UIButton!
    @IBOutlet weak var signup: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 
        
        signin.layer.cornerRadius = 20
        signup.layer.cornerRadius = 20
        imgicon.layer.cornerRadius = imgicon.frame.size.width/2
    }


}

