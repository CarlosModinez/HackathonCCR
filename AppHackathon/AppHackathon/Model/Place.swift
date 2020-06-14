//
//  Place.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import Foundation

class Place{
    private let id :String
    private let name :String
    private let addres :Address
    private let category :String //Restaurante,
    private let coverPhoto :String
    private let photos :[String?]
    private let comments : [Comment?]
    
    init(id :String, name :String, addres :Address, category :String, coverPhoto :String, photos :[String?], comments :[Comment?]) {
        self.id = id
        self.name = name
        self.addres = addres
        self.category = category
        self.coverPhoto = coverPhoto
        self.photos = photos
        self.comments = comments
    }
    
    func getName() -> String{
        return self.name
    }
    
    func getAddress() -> Address{
        return self.addres
    }
    
    func getCoupons() -> [Coupon?]{
        var coupons :[Coupon?] = []
        for c in Model.instance.coupons{
            if c.getPlace().getId() == self.id{
                coupons.append(c)
            }
        }
        return coupons
    }
    
    func getResearches() -> [Search?]{
        var researches :[Search?] = []
        for search in Model.instance.researches{
            if search?.place.id == self.id{
                researches.append(search)
            }
        }
        return researches
    }
    
    func getId() -> String{
        return self.getId()
    }
    
    func getPhotos() -> [String?]{
        return self.photos
    }
    
    func getComments() -> [Comment?]{
        return comments
    }
    
    func getCategory() -> String{
        return self.category
    }
}
