//
//  TableViewController.swift
//  Werkstuk1
//
//  Created by WILLEMS Cédric (s) on 17/05/2018.
//  Copyright © 2018 WILLEMS Cédric (s). All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var personen : Array<Persoon> = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        let photo1 = #imageLiteral(resourceName: "persoon1")
        let photo2 = #imageLiteral(resourceName: "persoon2")
        let photo3 = #imageLiteral(resourceName: "persoon3")
        let adres1 = Adres(straat: "Maria van Hongarijelaan", huisnummer: "13", postcode: 1070, gemeente: "Ganshoren")
        let adres2 = Adres(straat: "de Lignestraat", huisnummer: "27", postcode: 1000, gemeente: "Brussel")
        let adres3 = Adres(straat: "Atrebatenstraat", huisnummer: "156", postcode: 1040, gemeente: "Etterbeek")
        let persoonprofiel1 = Persoon(naam : "Vermeir", voornaam : "Ines", telefoonnummer: "04 75 89 98 13", adres : adres1, foto : photo1)
        let persoonprofiel2 = Persoon(naam : "Roselaar", voornaam : "Stijn", telefoonnummer: "04 77 69 98 13", adres : adres2, foto : photo2)
        let persoonprofiel3 = Persoon(naam : "Verstaeten", voornaam : "Cedric", telefoonnummer: "04 88 55 22 13", adres : adres3, foto : photo3)
        personen = [persoonprofiel1, persoonprofiel2, persoonprofiel3]
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
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell...
        let cellIndentifier = "MealtableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: <#T##IndexPath#>) as? PersoonTableViewCell else {
            fatalError("The dequeued cell is not an instance of PersoonTableViewCell.")
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
