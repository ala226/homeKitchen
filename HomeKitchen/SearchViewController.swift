//
//  SearchViewController.swift
//  HomeKitchen
//
//  Created by Eng.lolla on 8/22/19.
//  Copyright © 2019 Eng.lolla. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController ,UICollectionViewDataSource , UICollectionViewDelegate {
   
    

    @IBOutlet weak var SearchCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = SearchCollectionView.dequeueReusableCell(withReuseIdentifier: "cellice", for: indexPath)
        return cell
    }
    

 

}
