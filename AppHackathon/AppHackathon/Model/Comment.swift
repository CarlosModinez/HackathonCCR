//
//  Comment.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import Foundation
class Comment{
    let title :String
    let subTitle :String
    let rating :Int
    
    init(title :String, subTitle :String, rating :Int){
        self.title = title
        self.subTitle = subTitle
        self.rating = rating
    }
}
