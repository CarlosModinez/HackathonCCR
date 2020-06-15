//
//  Search.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import Foundation

class Search{
    let place :Place
    let trucker :Trucker
    let searchForm :SearchForm
    let customersTroubled :Bool

    init(place :Place, trucker :Trucker, customersTroubled :Bool, searchForm :SearchForm){
        self.place = place
        self.trucker = trucker
        self.customersTroubled = customersTroubled
        self.searchForm = searchForm
    }
}
