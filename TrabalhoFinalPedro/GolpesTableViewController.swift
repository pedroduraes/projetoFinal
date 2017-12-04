//
//  GolpesTableViewController.swift
//  TrabalhoFinalPedro
//
//  Created by Aloc SP08120 on 03/12/2017.
//  Copyright © 2017 Aloc SP08120. All rights reserved.
//

import UIKit

class GolpesTableViewController: UITableViewController, UISearchBarDelegate {

    @IBOutlet weak var mySearch: UISearchBar!
    var searchActive : Bool = false
    var golpesFiltro = [Golpe]()
    var golpes = [Golpe]()
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchActive = true;
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        golpesFiltro = [Golpe]()
        for item in golpes
        {
            let tmp = "\(item.rawValue) \(item)"
            if tmp.lowercased().range(of: searchText.lowercased()) != nil {
                golpesFiltro.append(item)
            }
        }
        
        if(golpesFiltro.count == 0){
            searchActive = false;
        } else {
            searchActive = true;
        }
        self.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        golpes = [Golpe.Hadouken,Golpe.Shoryuken,Golpe.HurricaneKick,Golpe.ElectricThunder,Golpe.RollingAttack,Golpe.VerticalRolling,Golpe.SankakuTobi,Golpe.YousouKyaku,Golpe.KakuKyakuRaku,Golpe.DrillZutsuki,Golpe.DrillKick,Golpe.YogaFire,Golpe.YogaFlame,Golpe.YogaBlast,Golpe.DashStraight,Golpe.DashUpper,Golpe.TurnPunch,Golpe.BuffaloHeadbutt,Golpe.GouHadouken,Golpe.ZankuuHadouken,Golpe.ShakunetsuHadouken,Golpe.GouShoryuken,Golpe.FlyingBodyAttack,Golpe.DoubleKneeDrop,Golpe.DoubleLariat,Golpe.QuickLariat]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if(searchActive) {
            return golpesFiltro.count
        }else {
            return golpes.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultTableCell", for: indexPath)
        
        // Configure the cell...
        if searchActive {
            cell.textLabel?.text = "\(golpesFiltro[indexPath.row])"
            cell.detailTextLabel?.text = golpesFiltro[indexPath.row].rawValue
        }else {
            cell.textLabel?.text = "\(golpes[indexPath.row])"
            cell.detailTextLabel?.text = golpes[indexPath.row].rawValue
        }
        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
