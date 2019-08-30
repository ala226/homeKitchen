//
//  FavoritesViewController.swift
//  HomeKitchen
//
//  Created by Eng.lolla on 8/26/19.
//  Copyright © 2019 Eng.lolla. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController , UICollectionViewDataSource ,UICollectionViewDelegate {
  
    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell  = collection.dequeueReusableCell(withReuseIdentifier: "FavoritCell", for: indexPath) as! FavoritCollectionViewCell
        return cell
    }
    
}
