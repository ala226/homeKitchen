//
//  CollectionViewCell.swift
//  HomeKitchen
//
//  Created by Eng.lolla on 8/22/19.
//  Copyright © 2019 Eng.lolla. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imagbig: UIImageView!
    
    @IBOutlet weak var timebig: UILabel!
    @IBOutlet weak var candybig: UILabel!
    @IBOutlet weak var pricebig: UILabel!
    

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    
       imagbig.layer.cornerRadius =  33
      //  imgeSmall.layer.cornerRadius = 30
        
        
    }
}
