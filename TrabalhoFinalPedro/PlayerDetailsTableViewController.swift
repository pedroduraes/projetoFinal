//
//  PlayerDetailsTableViewController.swift
//  TrabalhoFinalPedro
//
//  Created by Aloc SP08120 on 03/12/2017.
//  Copyright © 2017 Aloc SP08120. All rights reserved.
//

import UIKit

class PlayerDetailsTableViewController: UITableViewController {

    var jogador : Personagens = Personagens(name: "")
    var jogadorData = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        jogadorData = jogador.toArray()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        return jogadorData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultTableCell", for: indexPath)

        // Configure the cell...
        
        if indexPath.row == 0 {
            let imgCustom =  UIImage(named: jogador.name)
            //let imgView = UIImageView(image: imgCustom)
            //cell.accessoryView =  imgView
            cell.imageView?.image = imgCustom
            cell.textLabel?.text = jogadorData[indexPath.row]
            cell.textLabel?.font = UIFont(name: (cell.textLabel?.font.fontName)!, size: 30)
            cell.textLabel?.backgroundColor = UIColor.blue
        }else {
            cell.textLabel?.text = "\(indexPath.row) - \(jogadorData[indexPath.row])"
        }

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true, completion: nil)
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
