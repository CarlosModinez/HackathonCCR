//
//  Coupon.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import Foundation
class Coupon{
    
    let id :String
    let trackingCode :String
    let place :Place
    let oldPrice :Float
    let newPrice :Float
    let title :String
    let discount :Float
    let points :Int
    let nameImg :String
    
    init(id :String, trackingCode :String, place :Place, oldPrice :Float, newPrice :Float, title :String, discount :Float, points :Int, nameImg :String){
        self.id = id
        self.trackingCode = trackingCode
        self.place = place
        self.oldPrice = oldPrice
        self.newPrice = newPrice
        self.title = title
        self.discount = discount
        self.points = points
        self.nameImg = nameImg
    }
    
}
