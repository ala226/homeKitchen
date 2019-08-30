//
//  DetailsViewController.swift
//  HomeKitchen
//
//  Created by Eng.lolla on 8/26/19.
//  Copyright © 2019 Eng.lolla. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController , UICollectionViewDataSource ,UICollectionViewDelegate{
   
    @IBOutlet weak var collection: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collection.dequeueReusableCell(withReuseIdentifier: "DetailsCell", for: indexPath) as! DetailsCollectionViewCell
        return cell
    }
    

  

}
