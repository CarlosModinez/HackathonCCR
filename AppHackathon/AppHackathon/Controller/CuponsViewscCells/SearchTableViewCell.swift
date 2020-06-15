//
//  SearchTableViewCell.swift
//  AppHackathon
//
//  Created by Carlos Modinez on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    @IBOutlet weak var btnSearch: UIButton!
    @IBOutlet weak var btnFilter: UIButton!
    
    
    @IBAction func btnSearchPressed(_ sender: Any) {
        print("Search pressed")
    }
    @IBAction func btnFilterPressed(_ sender: Any) {
        print("Filter pressed")
    }
    
}
