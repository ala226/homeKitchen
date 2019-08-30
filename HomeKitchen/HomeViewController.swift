//
//  HomeViewController.swift
//  HomeKitchen
//
//  Created by Eng.lolla on 8/20/19.
//  Copyright © 2019 Eng.lolla. All rights resuerved.
//

import UIKit

class HomeViewController: UIViewController  ,UITableViewDelegate ,UITableViewDataSource ,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    let price = ["value1","value2","value3","value4","value5","value6"]
    let time = ["3 min","10 min","15 min","12 min","20 min","one hours"]
    let location = ["kuwait","octobar","matroh","giza","cairo","london"]
    
    @IBOutlet weak var chooesCollectionView: UICollectionView!
    @IBOutlet weak var priceTable: UITableView!
    @IBOutlet weak var timeTable: UITableView!
    @IBOutlet weak var timeButton: UIButton!
    
    @IBOutlet weak var pricebutton: UIButton!
    
    @IBOutlet weak var locationTable: UITableView!
    
    @IBOutlet weak var locationButton: UIButton!
    
    
    @IBOutlet weak var ImageCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.priceTable.isHidden = true
        self.timeTable.isHidden = true
        self.locationTable.isHidden = true
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var count:Int?
        
        if tableView == self.priceTable {
            count = price.count
        }
            
        else if tableView == self.timeTable {
            count =  time.count
        }
            
        else if tableView == self.locationTable
        {
            count = location.count
            
        }
        
        return count!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell:UITableViewCell?
        
        if tableView == self.priceTable
        {
            cell = priceTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PriceTableViewCell
            
            cell?.textLabel!.text = price[indexPath.row]
            
        }
        else if tableView == self.timeTable
        {
            cell = timeTable.dequeueReusableCell(withIdentifier: "celltime", for: indexPath) as! timeTableViewCell
            
            cell?.textLabel!.text = time[indexPath.row]
            
            
        }
        else if tableView == self.locationTable
        {
            
            cell = locationTable.dequeueReusableCell(withIdentifier: "celllocation", for: indexPath) as! locationTableViewCell
            cell!.textLabel!.text = location[indexPath.row]
        }
        
        
        
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView == self.priceTable
        {
            let cell = priceTable.cellForRow(at: indexPath)
            pricebutton.setTitle(  cell!.textLabel!.text, for: .normal)
            self.priceTable.isHidden = true
        }
            
        else if tableView == self.timeTable
        {
            let cell = timeTable.cellForRow(at: indexPath)
            timeButton.setTitle( cell!.textLabel!.text, for: .normal)
            
            self.timeTable.isHidden = true
            
        }
            
        else if tableView == self.locationTable
        {
            let cell = locationTable.cellForRow(at: indexPath)
            locationButton.setTitle(cell?.textLabel?.text, for: .normal)
            self.locationTable.isHidden = true
        }
        
        
        
        
    }
    
    
    @IBAction func price(_ sender: Any) {
        
        self.priceTable.isHidden = !self.priceTable.isHidden
    }
    
    @IBAction func time(_ sender: Any) {
        self.timeTable.isHidden = !self.timeTable.isHidden
        self.priceTable.isHidden = true
        
    }
    
    @IBAction func location(_ sender: Any) {
        
        self.locationTable.isHidden = !self.locationTable.isHidden
        self.priceTable.isHidden = true
        self.timeTable.isHidden = true
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var count:Int?
        
        if collectionView == ImageCollection
        {
            count=3
        }
        else if collectionView == chooesCollectionView {
            count = 10
            
        }
        return count!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell:UICollectionViewCell?
        
        if collectionView == ImageCollection
        {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        }
        else if collectionView == chooesCollectionView
        {
            cell = chooesCollectionView.dequeueReusableCell(withReuseIdentifier: "cellice", for: indexPath)
        }
        return cell!
    }
    
    
    
}
