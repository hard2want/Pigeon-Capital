//
//  AddLeadViewController.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/5/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class AddLeadViewController: UIViewController {
    
    var company: Company?
    
    @IBOutlet weak var companyNameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var websiteTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let company = company {
            companyNameTextField.text = company.name
            cityTextField.text = company.city
            stateTextField.text = company.state
            websiteTextField.text = company.website
            descriptionTextField.text = company.description
        } // end if let company = company
    } // end viewDidLoad()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     super.prepare(for: segue, sender: sender)
     
     guard segue.identifier == "saveUnwind" else {return}
     
     let name = companyNameTextField.text ?? "missing company name"
     let city = cityTextField.text ?? "missing city"
     let state = stateTextField.text ?? "missing state"
     let description = descriptionTextField.text ?? "missing description"
     let website = websiteTextField.text ?? "missing website"
        
     
     company = Company(name: name, description: description, city: city, state: state, website: website, industry: "", agent: "", referral: false, priority: false, email1Sent: false, responseUnder24Hours: false, moveToPreScreen: false, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: false, scorecard: false, diligence: false, portfolio: false, pass: false)
     } // end prepare(for segue: )
} // end AddLeadViewController
