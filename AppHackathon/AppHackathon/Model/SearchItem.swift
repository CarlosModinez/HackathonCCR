//
//  SearchItem.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import Foundation
class SearchItem{
    let title :String
    let subTitle :String?
    var rating :Int? //Like or Dislike | Star Rating
    
    init(title :String, subTitle :String?, rating :Int) {
        self.title = title
        self.subTitle = subTitle
        self.rating = rating
    }
    
}
