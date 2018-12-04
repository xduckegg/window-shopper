//
//  Wage.swift
//  window-shopper
//
//  Created by Khaled Aldousari on 12/4/18.
//  Copyright © 2018 Khaled Aldousari. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        // Round up the hours because we will garuntee that those hours would buy the item
        return Int(ceil(price/wage))
        
    }
}
