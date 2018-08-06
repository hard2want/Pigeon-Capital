//
//  Company.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/5/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import Foundation

class Company: Codable {

// ---------------------------------------------------------- properties
    // company info
    var name: String
    var description: String
    var city: String
    var state: String
    var website: String
    var industry: String

    // lead info
    var agent: String
    var referral: Bool
    var strongReferral: Bool
    var priority: Bool
    var email1Sent: Bool
    var responseUnder24Hours: Bool
    
    // prescreen info
    var iot: Bool = false
    var midwest: Bool = false
    var leadInvestor: Bool = false
    var preSeedUnder6M: Bool = false
    var raiseUnder1M: Bool = false
    
    // non-negotiables
    var founderRightPersonToAddressProblem: String = ""
    var founderIsResponsive: String = ""
    var ideaHasStrongRecurringRevenueComponent: String = ""
    var teamCommittedFullTimePostClose: String = ""
    
    // thesis info
    var tractable: Bool = false
    var democratization: Bool = false
    var accessToIdleSupply: Bool = false
    var customerExpansion: Bool = false
    var networkEffects: Bool = false
    var bizDevInnovation: Bool = false
    var competeWithNonConsumption: Bool = false
    var thesisCounter: Int = 0
    
    // talent info - founder
    var founderStrengthIT: String = ""
    var founderStrengthSales: String = ""
    var founderStrengthMarketing: String = ""
    var founderStrengthHustler: String = ""
    var founderStrengthLearner: String = ""
    var foundStoryStoryTellingAbility: String = ""
    var foundDecisionMakingLogic: String = ""
    var founderCustomerObsessed: String = ""
    var founderDomainExpertise: String = ""

    
    // talent info - team
    var teamStrongTechnicalBuilder: String = ""
    var teamStrongBDLeader: String = ""

    // idea / marketplace
    var clearProblemDefinition: String = ""
    var largeGrowingTamSamSom: String = ""
    var validRealMoat: String = ""
    var strongBeachHead: String = ""
    var ableToBridgeTamSam: String = ""
    var tenYearTest: String = ""
    var clearUserBuyer: String = ""
    var signularFocusedModel: String = ""
    var definedSuccessMetrics: String = ""
    var favorableMarketTrend: String = ""
    var customerBudgetLineItem: String = ""
    
    // execution
    var coreOfferingInHouse: String = ""
    var highUserEngagement: String = ""
    var highSomTraction: String = ""
    var lowChurn: String = ""
    var strongMarketingAdoptionPlan: String = ""
    var fundingProvidesRunway: String = ""

    // diligence - business
    var useCaseSupport: Bool = false
    var technicalDifferentiation: Bool = false
    var teamBackground: Bool = false
    var marketAnalysis: Bool = false
    var revenueModel: Bool = false
    var customerAcquisition: Bool = false
    var financialReview: Bool = false
    var riskAnalysis: Bool = false
    
    // diligence - legal
    var charterDocuments: Bool = false
    var boardMinutes: Bool = false
    var stockCapTable: Bool = false
    var regulatory: Bool = false
    var intellectualProperty: Bool = false
    var managementEmployee: Bool = false
    var financialAudit: Bool = false
    
    // pipeline status
    var preScreen: Bool
    var scorecard: Bool
    var diligence: Bool
    var portfolio: Bool
    var pass: Bool
    
    // company id
//    static var id: Int = 0

// ---------------------------------------------------------------- init()
    init(
        // company info
        name: String,
        description: String,
        city: String,
        state: String,
        website: String,
        industry: String,
    
        // lead info
        agent: String,
        referral: Bool,
        strongReferral: Bool,
        priority: Bool,
        email1Sent: Bool,
        responseUnder24Hours: Bool,
    
        // prescreen info
        iot: Bool,
        midwest: Bool,
        leadInvestor: Bool,
        preSeedUnder6M: Bool,
        raiseUnder1M: Bool,
    
        // non-negotiables
        founderRightPersonToAddressProblem: String,
        founderIsResponsive: String,
        ideaHasStrongRecurringRevenueComponent: String,
        teamCommittedFullTimePostClose: String,
    
        // thesis info
        tractable: Bool,
        democratization: Bool,
        accessToIdleSupply: Bool,
        customerExpansion: Bool,
        networkEffects: Bool,
        bizDevInnovation: Bool,
        competeWithNonConsumption: Bool,
        thesisCounter: Int,
    
        // talent info - founder
        founderStrengthIT: String,
        founderStrengthSales: String,
        founderStrengthMarketing: String,
        founderStrengthHustler: String,
        founderStrengthLearner: String,
        foundStoryStoryTellingAbility: String,
        foundDecisionMakingLogic: String,
        founderCustomerObsessed: String,
        founderDomainExpertise: String,
    
    
        // talent info - team
        teamStrongTechnicalBuilder: String,
        teamStrongBDLeader: String,
    
        // idea / marketplace
        clearProblemDefinition: String,
        largeGrowingTamSamSom: String,
        validRealMoat: String,
        strongBeachHead: String,
        ableToBridgeTamSam: String,
        tenYearTest: String,
        clearUserBuyer: String,
        signularFocusedModel: String,
        definedSuccessMetrics: String,
        favorableMarketTrend: String,
        customerBudgetLineItem: String,
    
        // execution
        coreOfferingInHouse: String,
        highUserEngagement: String,
        highSomTraction: String,
        lowChurn: String,
        strongMarketingAdoptionPlan: String,
        fundingProvidesRunway: String,
    
        // diligence - business
        useCaseSupport: Bool,
        technicalDifferentiation: Bool,
        teamBackground: Bool,
        marketAnalysis: Bool,
        revenueModel: Bool,
        customerAcquisition: Bool,
        financialReview: Bool,
        riskAnalysis: Bool,
    
        // diligence - legal
        charterDocuments: Bool,
        boardMinutes: Bool,
        stockCapTable: Bool,
        regulatory: Bool,
        intellectualProperty: Bool,
        managementEmployee: Bool,
        financialAudit: Bool,
    
        // pipeline status
        preScreen: Bool,
        scorecard: Bool,
        diligence: Bool,
        portfolio: Bool,
        pass: Bool
        ) {
        // company info
        self.name = name
        self.description = description
        self.city = city
        self.state = state
        self.website = website
        self.industry = industry
        
        // lead info
        self.agent = agent
        self.referral = referral
        self.strongReferral = strongReferral
        self.priority = priority
        self.email1Sent = email1Sent
        self.responseUnder24Hours = responseUnder24Hours
        
        // prescreen info
        self.iot = false
        self.midwest = false
        self.leadInvestor = false
        self.preSeedUnder6M = false
        self.raiseUnder1M = false
        
        // non-negotiables
        self.founderRightPersonToAddressProblem = ""
        self.founderIsResponsive = ""
        self.ideaHasStrongRecurringRevenueComponent = ""
        self.teamCommittedFullTimePostClose = ""
        
        // thesis info
        self.tractable = false
        self.democratization = false
        self.accessToIdleSupply = false
        self.customerExpansion = false
        self.networkEffects = false
        self.bizDevInnovation = false
        self.competeWithNonConsumption = false
        self.thesisCounter = 0
        
        // talent info - founder
        self.founderStrengthIT = ""
        self.founderStrengthSales = ""
        self.founderStrengthMarketing = ""
        self.founderStrengthHustler = ""
        self.founderStrengthLearner = ""
        self.foundStoryStoryTellingAbility = ""
        self.foundDecisionMakingLogic = ""
        self.founderCustomerObsessed = ""
        self.founderDomainExpertise = ""
        
        
        // talent info - team
        self.teamStrongTechnicalBuilder = ""
        self.teamStrongBDLeader = ""
        
        // idea / marketplace
        self.clearProblemDefinition = ""
        self.largeGrowingTamSamSom = ""
        self.validRealMoat = ""
        self.strongBeachHead = ""
        self.ableToBridgeTamSam = ""
        self.tenYearTest = ""
        self.clearUserBuyer = ""
        self.signularFocusedModel = ""
        self.definedSuccessMetrics = ""
        self.favorableMarketTrend = ""
        self.customerBudgetLineItem = ""
        
        // execution
        self.coreOfferingInHouse = ""
        self.highUserEngagement = ""
        self.highSomTraction = ""
        self.lowChurn = ""
        self.strongMarketingAdoptionPlan = ""
        self.fundingProvidesRunway = ""
        
        // diligence - business
        self.useCaseSupport = false
        self.technicalDifferentiation = false
        self.teamBackground = false
        self.marketAnalysis = false
        self.revenueModel = false
        self.customerAcquisition = false
        self.financialReview = false
        self.riskAnalysis = false
        
        // diligence - legal
        self.charterDocuments = false
        self.boardMinutes = false
        self.stockCapTable = false
        self.regulatory = false
        self.intellectualProperty = false
        self.managementEmployee = false
        self.financialAudit = false
        
        // pipeline status
        self.preScreen = preScreen
        self.scorecard = false
        self.diligence = false
        self.portfolio = false
        self.pass = pass
    } // end init()

// ---------------------------------------------------------- Persistence
    
    static let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
    static let archiveURL = documentsDirectory.appendingPathComponent("companies").appendingPathExtension("plist")
    
    // -------- SaveToFile
    
    static func saveToFile(companies: [Company]){
        let propertyListEncoder = PropertyListEncoder()
        let encodedCompanies = try? propertyListEncoder.encode(companies)
        try? encodedCompanies?.write(to: archiveURL, options: .noFileProtection)
    } // end saveToFile()
    
    
    // -------- loadFromFile
    
    static func loadFromFile() -> [Company]? {
        let propertyListDecoder = PropertyListDecoder()
        // attempts to a URL if data already exists
        if let retrievedCompaniesData = try? Data(contentsOf: archiveURL) {
            let decodedCompanies = try? propertyListDecoder.decode([Company].self, from: retrievedCompaniesData)
            // if the data exists, return the existing data
            return decodedCompanies!}
        // else call the sampleCompanies and return the starter data
        return sampleCompanies()
    } // end loadFromFile
    
    
    // --------- sample Company array
    
    static func sampleCompanies() -> [Company]{
        let sampleCompanies: [Company] = [
            
            Company(name: "Company A", description: "A good company to invest in", city: "Chicago", state: "IL", website: "", industry: "", agent: "", referral: true, strongReferral: false, priority: false, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: false, scorecard: false, diligence: false, portfolio: false, pass: false),
            Company(name: "Company B", description: "Another good company to invest in", city: "Chicago", state: "IL", website: "", industry: "", agent: "", referral: false, strongReferral: false, priority: false, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: false, scorecard: false, diligence: false, portfolio: false, pass: false),
            Company(name: "Company C", description: "A good company to invest in", city: "Chicago", state: "IL", website: "", industry: "", agent: "", referral: false, strongReferral: false, priority: false, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: false, scorecard: false, diligence: false, portfolio: false, pass: false),
            Company(name: "Company D", description: "A good company to invest in", city: "Chicago", state: "IL", website: "", industry: "", agent: "", referral: false, strongReferral: false, priority: false, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: false, scorecard: false, diligence: false, portfolio: false, pass: false),
            Company(name: "Company E", description: "A good company to invest in", city: "Chicago", state: "IL", website: "", industry: "", agent: "", referral: false, strongReferral: false, priority: false, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: false, scorecard: false, diligence: false, portfolio: false, pass: false),
            Company(name: "Company F", description: "A good company to invest in", city: "Chicago", state: "IL", website: "", industry: "", agent: "", referral: false, strongReferral: false, priority: false, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: false, scorecard: false, diligence: false, portfolio: false, pass: false)
            
        ]
        return sampleCompanies
    } // end sampleCompanies()
    
    
} // end class Company


