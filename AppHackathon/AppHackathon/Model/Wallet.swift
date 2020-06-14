//
//  Wallet.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import Foundation
class Wallet{
    
    var points :Int
    var coupons :[Coupon?]
    
    init(){
        self.points = 0
        self.coupons = []
    }
    
    func addPoints(points :Int){
        self.points += points
    }
    
    func subPoints(points :Int) -> Bool{
        if self.points < points{
            return false
        }
        self.points -= points
        
        return true;
    }
    
    func addCoupon(coupon :Coupon){
        if(subPoints(points: coupon.points)){
            self.coupons.append(coupon)
        }
    }
    
    func subCoupon(trackingCode :String) -> Bool{
        if coupons.count != 0{
            for i in 0..<self.coupons.count{
                let c = self.coupons[i]
                if c?.trackingCode == trackingCode{
                    self.coupons.remove(at: i)
                    return true
                }
            }
        }
        return false
    }
}
