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
    var allCompanies: [Company] = []
    var leads: [Company] = []
    var prescreen: [Company] = []

// ------------------------------------ viewDidLoad() & didReceiveMemoryWarning()
    override func viewDidLoad() {
        super.viewDidLoad()
        print("LeadVC ViewDidLoad called")

        // modify Row Height to accomodate longer descriptions
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 44.0
        
/*
        let leadsOnly = Company.loadCompaniesFromFile()!
        for company in leadsOnly {
            if company.preScreen == false {
                leads.append(company)
                allCompanies.append(company)
            } // end if
        } // end for company in totalCompanies
 */
        
/*
        // load saved leads or default starter list
        if let savedLeads = Company.loadLeadsFromFile() {
            leads = savedLeads
        } // end if let savedLeads
 
        // load saved prescreened or default starter list
        if let savedPrescreened = Company.loadPrescreenFromFile() {
            prescreen = savedPrescreened
        } // end if let savedLeads
*/
    } // end viewDidLoad()
    
/*
    override func viewWillAppear(_ animated: Bool) {
        if let tbc = tabBarController as? History {
            print("TBCVC called via LVC viewWillAppear")
            leads = tbc.allCompanies!
            for company in leads {
                print("LeadVC leads from BTBVC = \(company.name)")
            }
        }
     } // end viewWillAppear
 */
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
        return leads.count
    } // end tableView( numberOfRowsInSection: Int ) -> Int

// table View ( Cell For Row At )
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "companyCell", for: indexPath) as! LeadTableViewCell
        let lead = self.leads[indexPath.row]
        cell.update(with: lead)
        if lead.preScreen == true {
            cell.backgroundColor = .green
        }
        return cell
    } // end tableView( cellForRowAt indexPath: IndexPath ) -> UITableViewCell

    
    
// MARK: --------------------------------------------------------------------- Navigation

// prepare( SEGUE to Add )
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewLead" {
            let indexPath = tableView.indexPathForSelectedRow!
            let lead = leads[indexPath.row]
            let nav = segue.destination as! UINavigationController
            let addLeadViewController = nav.topViewController as! AddLeadViewController
            addLeadViewController.lead = lead
        } // end if segue.identifier == "viewLead"
        
      
    
    func unwindLeadToHome(segue: UIStoryboardSegue){
        guard segue.identifier == "unwindLeadToHome" else { return }
        let homeViewController = segue.destination as! HomeViewController
        homeViewController.leads = leads
        homeViewController.allCompanies = allCompanies
        } // end if segue.identifier == "viewLead"
    }
    
    
// Unwind To Lead Table View () w/ Save To File
    
    @IBAction func unwindToLeadTableView(segue: UIStoryboardSegue ){
        
        guard segue.identifier == "saveUnwind" else { return }
        let sourceViewController = segue.source as! AddLeadViewController
        
        if let newLead = sourceViewController.lead {
                if let selectedIndexPath = tableView.indexPathForSelectedRow {
                    leads[selectedIndexPath.row] = newLead
                    tableView.reloadRows(at: [selectedIndexPath], with: .none)
                } else {
                    let newIndexPath = IndexPath(row: leads.count, section: 0)
                    leads.append(newLead)
                    allCompanies.append(newLead)
                    tableView.insertRows(at: [newIndexPath], with: .automatic)
                } // end else
            
            } // end if newLead
        
    } // end unwindToLeadTableView(segue: )

    /*
    override func viewWillDisappear(_ animated: Bool) {
        // save data to file
        Company.saveCompaniesToFile(companies: allCompanies)
    } // end viewWillDisappear()
*/
    
} // end class LeadTableViewController
