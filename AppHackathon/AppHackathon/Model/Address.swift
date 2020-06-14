//
//  Adress.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import Foundation
class Address{

    var street :String
    var number :Int?
    var complement :String
    var district :String
    var city :String
    var state :String
    var longitude :Double
    var latitude :Double

    init(street :String, number :Int?, complement :String, district :String, city :String, state :String, longitude :Double, latitude :Double){
        
        self.street = street
        self.number = number
        self.complement = complement
        self.district = district
        self.city = city
        self.state = state
        self.longitude = longitude
        self.latitude = latitude
    }
}
