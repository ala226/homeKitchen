//
//  SmallCollectionViewCell.swift
//  HomeKitchen
//
//  Created by Eng.lolla on 8/22/19.
//  Copyright © 2019 Eng.lolla. All rights reserved.
//

import UIKit

class SmallCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var img: UIImageView!
    

override func awakeFromNib() {
    super.awakeFromNib()
    
    //profileImage.clipsToBounds = true
img.layer.cornerRadius = 20
    
}
}
