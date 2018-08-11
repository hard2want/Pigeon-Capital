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
    
    
    var allCompanies: [Company] = []
    var leads: [Company] = []
    var companiesToPrescreen: [Company] = []
    var scorecard: [Company] = []
    var diligence: [Company] = []
    var portfolio: [Company] = []
    var pass: [Company] = []
    var fail: [Company] = []
    var exit: [Company] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let loadCompanies = Company.loadCompaniesFromFile()!
        let loadLeads = Company.loadLeadsFromFile()!
        let loadPrescreen = Company.loadPrescreenFromFile()!
        let loadScorecard = Company.loadScorecardFromFile()!
        let loadDiligence = Company.loadDiligenceFromFile()!
        let loadPortfolio = Company.loadPortfolioFromFile()!
        let loadPass = Company.loadPassFromFile()!
        
        allCompanies = loadCompanies
        leads = loadLeads
        companiesToPrescreen = loadPrescreen
        scorecard = loadScorecard
        diligence = loadDiligence
        portfolio = loadPortfolio
        pass = loadPass
        
        leadsLabel.text = "Leads: \(leads.count)"
        prescreenLabel.text = "Prescreen: \(companiesToPrescreen.count)"
        scorecardLabel.text = "Scorecard: \(scorecard.count)"
        diligenceLabel.text = "Diligence: \(diligence.count)"
        portfolioLabel.text = "Portfolio: \(portfolio.count)"
    } // end viewDidLoad()

// ---------- Sending Data Out
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "viewLeads" {
            let nav = segue.destination as! UINavigationController
            let leadsViewController = nav.topViewController as! LeadTableViewController
            leadsViewController.leads = leads
//            leads.removeAll()
            Company.saveLeadsToFile(leads: leads)
        } // end segue.identifier == "viewLeads"
        
        
        if segue.identifier == "leadsToPrescreen" {
            let nav = segue.destination as! UINavigationController
            let prescreenViewController = nav.topViewController as! PreScreenTableViewController
            prescreenViewController.toPrescreen = companiesToPrescreen
//            companiesToPrescreen.removeAll()
            Company.savePrescreenedToFile(preScreened: companiesToPrescreen)
        } // end if segue.identifier == "leadsToPrescreen"
 
        if segue.identifier == "toScorecard" {
            let nav = segue.destination as! UINavigationController
            let scorecardViewController = nav.topViewController as! ScorecardTableViewController
            scorecardViewController.scorecard = scorecard
//            scorecard.removeAll()
            Company.saveScorecardToFile(scorecard: scorecard)
        } // end if segue.identifier == "toScorecard"
        
        if segue.identifier == "toDiligence" {
            let nav = segue.destination as! UINavigationController
            let diligenceViewController = nav.topViewController as! DiligenceTableViewController
            diligenceViewController.diligence = diligence
//            diligence.removeAll()
            Company.saveDiligenceToFile(diligence: diligence)
        } // end if segue.identifier == "toDiligence"
        
        if segue.identifier == "toPortfolio" {
            let nav = segue.destination as! UINavigationController
            let portfolioViewController = nav.topViewController as! PortfolioTableViewController
            portfolioViewController.portfolio = portfolio
//            portfolio.removeAll()
            Company.savePortfolioToFile(portfolio: portfolio)
        } // end if segue.identifier == "toPortfolio"
        
    } // end prepare for segue

    
// -------- Receiving Data in
    @IBAction func unwindLeadToHome(segue: UIStoryboardSegue ){
        
        leads.removeAll()
        let sourceViewController = segue.source as! LeadTableViewController
        let leadsFromLeads = sourceViewController.leads
        for company in leadsFromLeads {
           
            if company.pass == true {
                pass.append(company)
            } else if company.preScreen == true {
                companiesToPrescreen.append(company)
                allCompanies.append(company)

            } else {
                leads.append(company)
                allCompanies.append(company)

            } // end if/else
        } // for company in leadsFromLeads
        
        leadsLabel.text = "Leads: \(leads.count)"
        prescreenLabel.text = "Prescreen: \(companiesToPrescreen.count)"
        
        Company.savePassToFile(pass: pass)
                Company.saveLeadsToFile(leads: leads)
        Company.savePrescreenedToFile(preScreened: companiesToPrescreen)
        Company.saveCompaniesToFile(companies: allCompanies)
 
    } // end unwindLeadToHome(segue:)

    @IBAction func unwindPrescreenToHome(segue: UIStoryboardSegue ){
        companiesToPrescreen.removeAll()
        
        let sourceViewController = segue.source as! PreScreenTableViewController
        
        let prescreenedFromPrescreen = sourceViewController.toPrescreen
        for company in prescreenedFromPrescreen {
            
            if company.pass == true {
                pass.append(company)
            } else if company.scorecard == true {
                scorecard.append(company)
                allCompanies.append(company)

            } else {
                companiesToPrescreen.append(company)
                allCompanies.append(company)

            } // end if/else
        } // for company in prescreenedFromPrescreen
        
        prescreenLabel.text = "Prescreen: \(companiesToPrescreen.count)"
        scorecardLabel.text = "Scorecard: \(scorecard.count)"
        
        Company.savePassToFile(pass: pass)
        Company.saveScorecardToFile(scorecard: scorecard)
        Company.savePrescreenedToFile(preScreened: companiesToPrescreen)
        Company.saveCompaniesToFile(companies: allCompanies)
    } // end unwindPrescreenToHome(segue:)
    
    
    @IBAction func unwindScorecardToHome(segue: UIStoryboardSegue){
        scorecard.removeAll()
        
        let sourceViewController = segue.source as! ScorecardTableViewController
        
        let scoredFromScorecard = sourceViewController.scorecard
        for company in scoredFromScorecard {
            
            if company.pass == true {
                pass.append(company)
            } else if company.diligence == true {
                diligence.append(company)
                allCompanies.append(company)

            } else {
                scorecard.append(company)
                allCompanies.append(company)

            } // end if/else
        } // for company in prescreenedFromPrescreen

        scorecardLabel.text = "Scorecard: \(scorecard.count)"
        diligenceLabel.text = "Diligence: \(diligence.count)"
        
        Company.savePassToFile(pass: pass)
        Company.saveDiligenceToFile(diligence: diligence)
        Company.saveScorecardToFile(scorecard: scorecard)
        Company.saveCompaniesToFile(companies: allCompanies)
    } // end unwindScorecardToHome(segue:)
    
    @IBAction func unwindDiligenceToHome(segue: UIStoryboardSegue){
        diligence.removeAll()
        
        let sourceViewController = segue.source as! DiligenceTableViewController
        
        let dilyFromDiligence = sourceViewController.diligence
        for company in dilyFromDiligence {
            
            if company.pass == true {
                pass.append(company)
            } else if company.portfolio == true {
                portfolio.append(company)
                allCompanies.append(company)

            } else {
                diligence.append(company)
                allCompanies.append(company)

            } // end if/else
        } // for company in dilyFromDiligence
        
        diligenceLabel.text = "Diligence: \(diligence.count)"
        portfolioLabel.text = "Portfolio: \(portfolio.count)"
        
        Company.savePassToFile(pass: pass)
        Company.savePortfolioToFile(portfolio: portfolio)
        Company.saveDiligenceToFile(diligence: diligence)
        Company.saveCompaniesToFile(companies: allCompanies)
    } // end unwindDiligenceToHome(segue:)
   
    @IBAction func unwindPortfolioToHome(segue: UIStoryboardSegue){
        portfolio.removeAll()
        
        let sourceViewController = segue.source as! PortfolioTableViewController
        
        let resultFromPortfolio = sourceViewController.portfolio
        for company in resultFromPortfolio {
            
            if company.exit == true {
                exit.append(company)
            } else if company.fail == true {
                fail.append(company)
            } else {
                portfolio.append(company)
                allCompanies.append(company)
            } // end if/else
        } // for company in resultsFromPortfolio
        
        portfolioLabel.text = "Portfolio: \(portfolio.count)"
        Company.savePortfolioToFile(portfolio: portfolio)
        Company.saveCompaniesToFile(companies: allCompanies)

    } // end unwindPortfolioToHome(segue:)
    
    
} // end homeViewController
