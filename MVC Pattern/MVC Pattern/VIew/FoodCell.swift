//
//  FoodCell.swift
//  MVC Pattern
//
//  Created by Demo 01 on 02/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class FoodCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var lbl: UILabel!
    
    
    var foodData:FoodModel?{
        didSet{
           image.image = foodData?.img
            lbl.text = foodData?.titleStr

        }
    }
}

extension UICollectionViewCell{
    static var identifier: String
    {
        return String(describing: self)
    }
}
