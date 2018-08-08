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
    @IBOutlet weak var scorecardLabel: UILabel!
    @IBOutlet weak var diligenceLabel: UILabel!
    @IBOutlet weak var portfolioLabel: UILabel!
    
    
    var allCompanies = Company.loadCompaniesFromFile()!
    var leads = Company.loadLeadsFromFile()!
    var companiesToPrescreen = Company.loadPrescreenFromFile()!
    var scorecard = Company.loadScorecardFromFile()!
    var diligence = Company.loadDiligenceFromFile()!
    var portfolio = Company.loadPortfolioFromFile()!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let loadCompanies = Company.loadCompaniesFromFile()!
        let loadLeads = Company.loadLeadsFromFile()!
        let loadPrescreen = Company.loadPrescreenFromFile()!
        let loadScorecard = Company.loadScorecardFromFile()!
        let loadDiligence = Company.loadDiligenceFromFile()!
        let loadPortfolio = Company.loadPortfolioFromFile()!
        
        allCompanies = loadCompanies
        leads = loadLeads
        companiesToPrescreen = loadPrescreen
        scorecard = loadScorecard
        diligence = loadDiligence
        portfolio = loadPortfolio
        
        leadsLabel.text = "Leads: \(leads.count)"
        prescreenLabel.text = "Prescreen: \(companiesToPrescreen.count)"
        scorecardLabel.text = "Scorecard: \(scorecard.count)"
        diligenceLabel.text = "Diligence: \(diligence.count)"
        portfolioLabel.text = "Portfolio: \(portfolio.count)"
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
 
        if segue.identifier == "toScorecard" {
            let nav = segue.destination as! UINavigationController
            let scorecardViewController = nav.topViewController as! ScorecardTableViewController
            scorecardViewController.scorecard = scorecard
        } // end if segue.identifier == "toScorecard"
        
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
        companiesToPrescreen.removeAll()
        
        let sourceViewController = segue.source as! PreScreenTableViewController
        
        let prescreenedFromPrescreen = sourceViewController.toPrescreen
        for company in prescreenedFromPrescreen {
            
            if company.scorecard == true {
                scorecard.append(company)
                allCompanies.append(company)
                Company.saveScorecardToFile(scorecard: scorecard)
            } else {
                companiesToPrescreen.append(company)
                allCompanies.append(company)
                Company.savePrescreenedToFile(preScreened: companiesToPrescreen)
            } // end if/else
        } // for company in prescreenedFromPrescreen
        
        prescreenLabel.text = "Prescreen: \(companiesToPrescreen.count)"
        scorecardLabel.text = "Scorecard: \(scorecard.count)"
        Company.saveCompaniesToFile(companies: allCompanies)
    } // end unwindPrescreenToHome(segue:)
    
    
    @IBAction func unwindScorecardToHome(segue: UIStoryboardSegue){
        scorecard.removeAll()
        
        let sourceViewController = segue.source as! ScorecardTableViewController
        
        let scoredFromScorecard = sourceViewController.scorecard
        for company in scoredFromScorecard {
            
            if company.diligence == true {
                diligence.append(company)
                allCompanies.append(company)
                Company.saveDiligenceToFile(diligence: diligence)
            } else {
                scorecard.append(company)
                allCompanies.append(company)
                Company.saveScorecardToFile(scorecard: scorecard)
            } // end if/else
        } // for company in prescreenedFromPrescreen

        scorecardLabel.text = "Scorecard: \(scorecard.count)"
        diligenceLabel.text = "Diligence: \(diligence.count)"
        Company.saveCompaniesToFile(companies: allCompanies)
    } // end unwindScorecardToHome(segue:)
} // end homeViewController
