//
//  CardViewController.swift
//  HomeKitchen
//
//  Created by Eng.lolla on 8/25/19.
//  Copyright © 2019 Eng.lolla. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

    @IBOutlet weak var Order: UIButton!
    @IBOutlet weak var AddCard: UIButton!
    @IBOutlet weak var handlerArea: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Order.layer.cornerRadius = 20
        AddCard.layer.cornerRadius = 20
        Order.layer.borderColor = #colorLiteral(red: 0.9242570996, green: 0.289565742, blue: 0.4933934212, alpha: 1)
        Order.layer.borderWidth = 2

    }



}
