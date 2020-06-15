//
//  LocaisViewController.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 13/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import UIKit

//class LocaisViewController: UIViewController, UISearchBarDelegate, UISearchDisplayDelegate, UITableViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource {

    class LocaisViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
        @IBOutlet weak var collection: UICollectionView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        //Search on nav bar
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Model.instance.nearbyPlaces.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "nearbyPlacesCell", for: indexPath as IndexPath) as! NearbyPlacesCollectionViewCell
        
        let place = Model.instance.nearbyPlaces[indexPath.row]
        
        
        cell.coverPhoto.image = UIImage(named: (place?.getCoverPhoto())!)
        cell.labelAddress.text = "\(place!.getAddress().street), \(place!.getAddress().complement)"
        cell.labelCouponsPlace.text = "\(place!.getCoupons().count) cupons"
        cell.labelPlaceName.text = place?.getName()
//        cell.labelRating.text = place?.getRatingString()
        cell.labelRating.text = "4.8 (1.403)"
        cell.categoryLabel.text = place?.getCategory()
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "localTableViewController") as? LocalTableViewController{
                   
            vc.place = Model.instance.nearbyPlaces[indexPath.item]
                   self.show(vc, sender: self)
               }
        
    }
        
        

}
