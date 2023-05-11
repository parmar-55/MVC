//
//  FoodData.swift
//  MVC Pattern
//
//  Created by Demo 01 on 02/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import Foundation
import UIKit

class FoodData
{
    static func getAllFoddData() -> [FoodModel]
    {
        var arrData = [FoodModel]()
        arrData = [FoodModel(img: UIImage(named: "1")!, titleStr: "MixBurger"),
                   FoodModel(img: UIImage(named: "2")!, titleStr: "Dosa"),
        FoodModel(img: UIImage(named: "8")!, titleStr: "Pizza")
        ]
        return arrData
    }
}
