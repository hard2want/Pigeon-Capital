//
//  PreScreenTableViewController.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/6/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class PreScreenTableViewController: UITableViewController {

    // ----------------------------------- Empty companies array []
    var toPrescreen: [Company] = []
    
    // ------------------------------------ viewDidLoad() & didReceiveMemoryWarning()
    override func viewDidLoad() {
        super.viewDidLoad()
        // modify Row Height to accomodate longer descriptions
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 44.0
    } // end viewDidLoad()
    
    
    // MARK: ----------------------------------------------------------------- Table view data source
    
    // Number Of Sections ( in  tabelView )
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    } // end numberOfSections() -> Int
    
    // table View ( Number Of Rows In Section )
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toPrescreen.count
    } // end tableView( numberOfRowsInSection: Int ) -> Int
    
    // table View ( Cell For Row At )
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "preScreenCell", for: indexPath) as! PreScreenTableViewCell
        let prescreened = self.toPrescreen[indexPath.row]
        cell.update(with: prescreened)
        if prescreened.scorecard == true {
            cell.backgroundColor = .green
        } // end if
        if prescreened.pass == true {
            cell.backgroundColor = .red
        }
        return cell
    } // end tableView( cellForRowAt indexPath: IndexPath ) -> UITableViewCell
    
    
    
    // MARK: --------------------------------------------------------------------- Navigation
    
    // prepare( SEGUE to Add )
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "preScreenLead" {
            let indexPath = tableView.indexPathForSelectedRow!
            let prescreen = toPrescreen[indexPath.row]
            let nav = segue.destination as! UINavigationController
            let addPreScreenViewController = nav.topViewController as! AddPreScreenViewController
            addPreScreenViewController.screened = prescreen
        } // end if segue.identifier == "preScreenLead"
        
        func unwindPrescreenToHome(segue: UIStoryboardSegue){
            guard segue.identifier == "unwindPrescreenToHome" else { return }
            let homeViewController = segue.destination as! HomeViewController
            homeViewController.companiesToPrescreen = toPrescreen
        } // end if segue.identifier == "UnwindPrescreenToHome"
        
    } // end prepare(for segue: )
    
    // Unwind To PreScreen Table View () w/ Save To File
    
    @IBAction func unwindToPreScreenTableView(segue: UIStoryboardSegue ){
        
        guard segue.identifier == "saveUnwind" else { return }
        let sourceViewController = segue.source as! AddPreScreenViewController
        
        if let screened = sourceViewController.screened {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                toPrescreen[selectedIndexPath.row] = screened
                tableView.reloadRows(at: [selectedIndexPath], with: .none)
            } else {
                let newIndexPath = IndexPath(row: toPrescreen.count, section: 0)
                toPrescreen.append(screened)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
            } // end else
        } // end if let company
    } // end unwindToPreScreenTableView(segue: )
    

} // end preScreen Table View Controller
