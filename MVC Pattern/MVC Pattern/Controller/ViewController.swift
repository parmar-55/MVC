//
//  ViewController.swift
//  MVC Pattern
//
//  Created by Demo 01 on 02/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var arrData = [FoodModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        arrData = FoodData.getAllFoddData()
    }


}


extension ViewController:UICollectionViewDataSource,UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCell.identifier, for: indexPath) as! FoodCell
        
        cell.foodData = arrData[indexPath.row]
        
        return cell
    }
    
    
}
