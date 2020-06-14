//
//  LocaisViewController.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 13/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import UIKit

class LocaisViewController: UIViewController, UISearchBarDelegate, UISearchDisplayDelegate, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Search on nav bar
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
