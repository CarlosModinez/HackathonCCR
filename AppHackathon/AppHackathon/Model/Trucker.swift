//
//  Trucker.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import Foundation

class Trucker{
    let id :String
    let name :String
    let avatarImg :String
    let wallet :Wallet
    
    init(id :String, name:String, avatarImg :String, wallet :Wallet){
        self.id = id
        self.name = name
        self.wallet = wallet
        self.avatarImg = avatarImg
    }
    
    func getPoints() -> Int{
        self.wallet.points
    }
    
    
}
