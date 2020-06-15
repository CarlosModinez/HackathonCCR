//
//  CuponsTableViewController.swift
//  AppHackathon
//
//  Created by Carlos Modinez on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import UIKit

class CuponsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Model.instance.coupons.count + 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "FeaturedTableViewCell", for: indexPath) as! FeaturedTableViewCell
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "RestaurantInfoTableViewCell", for: indexPath) as! RestaurantInfoTableViewCell
        let cell3 = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        let cell4 = tableView.dequeueReusableCell(withIdentifier: "TitleTableViewCell", for: indexPath) as! TitleTableViewCell
        let cell5 = tableView.dequeueReusableCell(withIdentifier: "OthersCuponsTableViewCell", for: indexPath) as! OthersCuponsTableViewCell

        if indexPath.row == 0 {
            cell1.discount.text = String(Model.instance.coupons[0].getDiscount()*100) + "%"
            cell1.lblNewPrice.text = String(Model.instance.coupons[0].getNewPrice())
            cell1.lblOldPrice.text = String(Model.instance.coupons[0].getOldPrice())
            cell1.imgOffer.image = UIImage(named: Model.instance.coupons[0].getPhoto())
            cell1.points.text = String(Model.instance.coupons[0].getPoints())
            return cell1
            
        } else if indexPath.row == 1 {
            cell2.imgRestaurant.image = UIImage(named: "logo_restaurante")
            cell2.lblRestaurantAddress.text = Model.instance.coupons[0].getPlace().getAddress().street
            cell2.lblRestaurantName.text = Model.instance.coupons[0].getPlace().getName()
            cell2.lblRestaurantComplement.text = Model.instance.coupons[0].getPlace().getAddress().complement
            
            return cell2
        } else if indexPath.row == 2 {
            return cell3
        } else if indexPath.row == 3 {
            cell4.lblOthersOffers.text = "Outras ofertas"
            return cell4
        } else {
            cell5.imgRestaurantOffer.image = UIImage(named: Model.instance.coupons[indexPath.row - 3].getPhoto())
            cell5.lblNewPrice.text = String(Model.instance.coupons[indexPath.row - 3].getNewPrice())
            cell5.lblOldPrice.text = String(Model.instance.coupons[indexPath.row - 3].getOldPrice())
            cell5.lblOfferDescription.text = String(Model.instance.coupons[indexPath.row - 3].getTitle())
            cell5.lblPoints.text = String(Model.instance.coupons[indexPath.row - 3].getPoints())
            cell5.lblDescount.text = String(Model.instance.coupons[indexPath.row - 3].getDiscount()*100) + "%"
            self.tableView.rowHeight = 251
        }
        return cell5
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
