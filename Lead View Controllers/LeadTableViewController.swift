//
//  LeadTableViewController.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/5/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class LeadTableViewController: UITableViewController {

// ----------------------------------- Empty companies array []
    var companies: [Company] = []

// ------------------------------------ viewDidLoad() & didReceiveMemoryWarning()
    override func viewDidLoad() {
        super.viewDidLoad()

        // modify Row Height to accomodate longer descriptions
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 44.0
        
        // load saved companies or default starter list
        if let savedCompanies = Company.loadFromFile() {
            companies = savedCompanies
        } // end if let savedCompanies
    } // end viewDidLoad()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } // end didReceiveMemoryWarning()

    
// MARK: ----------------------------------------------------------------- Table view data source

// Number Of Sections ( in  tabelView )
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    } // end numberOfSections() -> Int

// table View ( Number Of Rows In Section )
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    } // end tableView( numberOfRowsInSection: Int ) -> Int

// table View ( Cell For Row At )
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "companyCell", for: indexPath) as! LeadTableViewCell
        let company = self.companies[indexPath.row]
        cell.update(with: company)
        return cell
    } // end tableView( cellForRowAt indexPath: IndexPath ) -> UITableViewCell

    
    
// MARK: --------------------------------------------------------------------- Navigation

// prepare( SEGUE to Add )
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewLead" {
            let indexPath = tableView.indexPathForSelectedRow!
            let company = companies[indexPath.row]
            let nav = segue.destination as! UINavigationController
            let addLeadViewController = nav.topViewController as! AddLeadViewController
            addLeadViewController.company = company
        } // end if segue.identifier == "viewLead"
    } // end prepare(for segue: )
    
// Unwind To Lead Table View () w/ Save To File
    
    @IBAction func unwindToLeadTableView(segue: UIStoryboardSegue ){
        
        guard segue.identifier == "saveUnwind" else { return }
        let sourceViewController = segue.source as! AddLeadViewController
        
        if let company = sourceViewController.company {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                companies[selectedIndexPath.row] = company
                tableView.reloadRows(at: [selectedIndexPath], with: .none)
            } else {
                let newIndexPath = IndexPath(row: companies.count, section: 0)
                companies.append(company)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
            } // end else
        } // end if let company
        
        // save data to file
        Company.saveToFile(companies: companies)
    } // end unwindToLeadTableView(segue: )

} // end class LeadTableViewController
