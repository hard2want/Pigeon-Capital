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

        let totalCompanies = Company.loadCompaniesFromFile()!
        
        allCompanies = totalCompanies
        for company in totalCompanies {
            if company.preScreen == false {
                leads.append(company)
            } else {
                companiesToPrescreen.append(company)
            }
        } // end for company in totalCompanies
        leadsLabel.text = String(leads.count)
        prescreenLabel.text = String(companiesToPrescreen.count)
    } // end viewDidLoad()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindLeadToHome(segue: UIStoryboardSegue ){
        let sourceViewController = segue.source as! LeadTableViewController
        
        let leadsFromLeads = sourceViewController.leads
        let allCompaniesFromLeads = sourceViewController.allCompanies
        allCompanies = allCompaniesFromLeads
        leads = []
        for company in leadsFromLeads {
           
            if company.preScreen == true {
                companiesToPrescreen.append(company)
            } else {
                leads.append(company)
            }
        }
        
        leadsLabel.text = String(leads.count)
        prescreenLabel.text = String(companiesToPrescreen.count)

    } // end

    @IBAction func unwindPrescreenToHome(segue: UIStoryboardSegue ){
        
    } // end
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "viewLeads" {
            let nav = segue.destination as! UINavigationController
            let leadsViewController = nav.topViewController as! LeadTableViewController
            leadsViewController.leads = leads
            leadsViewController.allCompanies = allCompanies
        }
 
        
        if segue.identifier == "leadsToPrescreen" {
            let nav = segue.destination as! UINavigationController
            let prescreenViewController = nav.topViewController as! PreScreenTableViewController
            prescreenViewController.toPrescreen = companiesToPrescreen
            print("count of companies sent to prescreen from Home \(companiesToPrescreen.count)")
        } // end if segue.identifier == "leadsToPrescreen"
        
    } // end prepare for segue

    override func viewWillDisappear(_ animated: Bool) {
        // save data to file
        Company.saveCompaniesToFile(companies: allCompanies)
    } // end viewWillDisappear()

}
