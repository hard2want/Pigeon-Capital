//
//  HomeViewController.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/7/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var leadsLabel: UILabel!
    @IBOutlet weak var prescreenLabel: UILabel!
    
    
    var allCompanies: [Company] = []
    var leads: [Company] = []
    var companiesToPrescreen: [Company] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let loadCompanies = Company.loadCompaniesFromFile()!
        let loadLeads = Company.loadLeadsFromFile()!
        let loadPrescreen = Company.loadPrescreenFromFile()!
        allCompanies = loadCompanies
        leads = loadLeads
        companiesToPrescreen = loadPrescreen
        
        leadsLabel.text = "Leads: \(leads.count)"
        prescreenLabel.text = "Prescreen: \(companiesToPrescreen.count)"
    } // end viewDidLoad()

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "viewLeads" {
            let nav = segue.destination as! UINavigationController
            let leadsViewController = nav.topViewController as! LeadTableViewController
            leadsViewController.leads = leads
            leads.removeAll()
            Company.saveLeadsToFile(leads: leads)
        }
        
        
        if segue.identifier == "leadsToPrescreen" {
            let nav = segue.destination as! UINavigationController
            let prescreenViewController = nav.topViewController as! PreScreenTableViewController
            prescreenViewController.toPrescreen = companiesToPrescreen
        } // end if segue.identifier == "leadsToPrescreen"
        
    } // end prepare for segue

    
    
    @IBAction func unwindLeadToHome(segue: UIStoryboardSegue ){
        leads.removeAll()


        let sourceViewController = segue.source as! LeadTableViewController
        
        let leadsFromLeads = sourceViewController.leads
        for company in leadsFromLeads {
           
            if company.preScreen == true {
                companiesToPrescreen.append(company)
                allCompanies.append(company)
                Company.savePrescreenedToFile(preScreened: companiesToPrescreen)
            } else {
                leads.append(company)
                allCompanies.append(company)
                Company.saveLeadsToFile(leads: leads)
            } // end if/else
        } // for company in leadsFromLeads
        
        leadsLabel.text = "Leads: \(leads.count)"
        prescreenLabel.text = "Prescreen: \(companiesToPrescreen.count)"
        Company.saveCompaniesToFile(companies: allCompanies)
    } // end unwindLeadToHome(segue:)

    @IBAction func unwindPrescreenToHome(segue: UIStoryboardSegue ){
        
    } // end
    
    // MARK: - Navigation

/*
    override func viewWillDisappear(_ animated: Bool) {
        // save data to file
        Company.saveCompaniesToFile(companies: allCompanies)
    } // end viewWillDisappear()
*/

}
