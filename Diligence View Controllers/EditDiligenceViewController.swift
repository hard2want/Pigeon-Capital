//
//  EditDiligenceViewController.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/9/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class EditDiligenceViewController: UIViewController {

    var diligence: Company?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var websiteLabel: UILabel!
    @IBOutlet weak var industryLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var useCaseSwitch: UISwitch!
    @IBOutlet weak var techDifferentiationSwitch: UISwitch!
    @IBOutlet weak var teamBackgroundSwitch: UISwitch!
    @IBOutlet weak var marketAnalysisSwitch: UISwitch!
    @IBOutlet weak var revenueModelSwitch: UISwitch!
    @IBOutlet weak var CustomerAcquisitionSwitch: UISwitch!
    @IBOutlet weak var financialReviewSwitch: UISwitch!
    @IBOutlet weak var riskAnalysisSwitch: UISwitch!
    
    @IBOutlet weak var charterDocumentsSwitch: UISwitch!
    @IBOutlet weak var boardMinutesSwitch: UISwitch!
    @IBOutlet weak var stockCapTableSwitch: UISwitch!
    @IBOutlet weak var regulatorySwitch: UISwitch!
    @IBOutlet weak var intellectualPropertySwitch: UISwitch!
    @IBOutlet weak var mgmtEmployeeSwitch: UISwitch!
    @IBOutlet weak var financialAuditSwitch: UISwitch!
    @IBOutlet weak var addToPortfolioSwitch: UISwitch!
    
    @IBOutlet weak var passSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let company = diligence {
            
            nameLabel.text = company.name
            cityLabel.text = company.city
            stateLabel.text = company.state
            websiteLabel.text = company.website
            descriptionLabel.text = company.description
            industryLabel.text = company.industry
            
            useCaseSwitch.isOn = company.useCaseSupport
            techDifferentiationSwitch.isOn = company.technicalDifferentiation
            teamBackgroundSwitch.isOn = company.teamBackground
            marketAnalysisSwitch.isOn = company.marketAnalysis
            revenueModelSwitch.isOn = company.revenueModel
            CustomerAcquisitionSwitch.isOn = company.customerAcquisition
            financialReviewSwitch.isOn = company.financialReview
            riskAnalysisSwitch.isOn = company.riskAnalysis
            
            charterDocumentsSwitch.isOn = company.charterDocuments
            boardMinutesSwitch.isOn = company.boardMinutes
            stockCapTableSwitch.isOn = company.stockCapTable
            regulatorySwitch.isOn = company.regulatory
            intellectualPropertySwitch.isOn = company.intellectualProperty
            mgmtEmployeeSwitch.isOn = company.managementEmployee
            financialAuditSwitch.isOn = company.financialAudit
            addToPortfolioSwitch.isOn = company.portfolio
            
            passSwitch.isOn = company.pass
            
        } // end if let

    } // end viewDidLoad()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveUnwind" else {return}
        
        diligence?.useCaseSupport = useCaseSwitch.isOn
        diligence?.technicalDifferentiation = techDifferentiationSwitch.isOn
        diligence?.teamBackground = teamBackgroundSwitch.isOn
        diligence?.marketAnalysis = marketAnalysisSwitch.isOn
        diligence?.revenueModel = revenueModelSwitch.isOn
        diligence?.customerAcquisition = CustomerAcquisitionSwitch.isOn
        diligence?.financialReview = financialReviewSwitch.isOn
        diligence?.riskAnalysis = riskAnalysisSwitch.isOn
        
        diligence?.charterDocuments = charterDocumentsSwitch.isOn
        diligence?.boardMinutes = boardMinutesSwitch.isOn
        diligence?.stockCapTable = stockCapTableSwitch.isOn
        diligence?.regulatory = regulatorySwitch.isOn
        diligence?.intellectualProperty = intellectualPropertySwitch.isOn
        diligence?.managementEmployee = mgmtEmployeeSwitch.isOn
        diligence?.financialAudit = financialAuditSwitch.isOn
        diligence?.portfolio = addToPortfolioSwitch.isOn
        
        diligence?.pass = passSwitch.isOn
    } // end prepare(segue:)
} // end EditDiligenceViewController
