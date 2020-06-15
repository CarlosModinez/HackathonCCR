//
//  Coupon.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import Foundation
class Coupon{
    
    private let title :String
    private let id :String
    private let trackingCode :String
    private let place :Place
    private let oldPrice :Float
    private let newPrice :Float
    private let discount :Float
    private let points :Int
    private let nameImg :String
    private let highlight :Bool
    
    init(id :String, trackingCode :String, place :Place, oldPrice :Float, newPrice :Float, title :String, discount :Float, points :Int, nameImg :String, highlight :Bool){
        self.id = id
        self.trackingCode = trackingCode
        self.place = place
        self.oldPrice = oldPrice
        self.newPrice = newPrice
        self.title = title
        self.discount = discount
        self.points = points
        self.nameImg = nameImg
        self.highlight = highlight
    }
    
    func getTrackingCode() -> String{
        return self.trackingCode
    }
    
    func getTitle() -> String{
        return self.title
    }
    
    func getPlace() -> Place{
        return self.place
    }
    
    func getOldPrice() -> Float{
        return self.oldPrice
    }
    
    func getNewPrice() -> Float{
        return self.newPrice
    }
    
    func getPoints() -> Int{
        return self.points
    }
    
    func getPhoto() -> String{
        return self.nameImg
    }
    
    func getDiscount() -> Float {
        return self.discount
    }
    
    func isHighlight() -> Bool{
        return self.highlight
    }
    
    static func getCouponHighlight(coupons :[Coupon?]) -> Coupon?{
        for c in coupons{
            if (c?.isHighlight())!{
                return c
            }
        }
        return nil
    }
    
    static func getNormalCoupon(coupons :[Coupon?]) -> [Coupon?]{
        var normalCoupons :[Coupon?] = []
        for c in coupons{
            if (c?.isHighlight())!{
                normalCoupons.append(c)
            }
        }
        return normalCoupons
    }
}
