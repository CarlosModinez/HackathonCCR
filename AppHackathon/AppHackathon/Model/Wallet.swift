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
    
    init(points :Int, coupons :[Coupon?]){
        self.points = points
        self.coupons = coupons
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
    
    //Func para obter um cupom (subtrair pontos e adc cupom na carteira)
    func addCoupon(coupon :Coupon){
        if(subPoints(points: coupon.getPoints())){
            self.coupons.append(coupon)
        }
    }
    
    //Func utilizada ao momento que o usuário utiliza o cupom
    func subCoupon(trackingCode :String) -> Bool{
        if coupons.count != 0{
            for i in 0..<self.coupons.count{
                let c = self.coupons[i]
                if c?.getTrackingCode() == trackingCode{
                    self.coupons.remove(at: i)
                    return true
                }
            }
        }
        return false
    }
}
