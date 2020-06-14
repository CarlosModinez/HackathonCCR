//
//  SearchForm.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import Foundation
class SearchForm{
    let itensStarRating :[SearchItem?]
    let itensLikeDislike :[SearchItem?]
    
    init(itensStarRating :[SearchItem?], itensLikeDislike :[SearchItem?]){
        self.itensLikeDislike = itensLikeDislike
        self.itensStarRating = itensStarRating
    }
}
