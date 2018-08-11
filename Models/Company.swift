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
    var iot: Bool
    var midwest: Bool
    var leadInvestor: Bool
    var preSeedUnder6M: Bool
    var raiseUnder1M: Bool
    
    // non-negotiables
    var founderRightPersonToAddressProblem: String
    var founderIsResponsive: String
    var ideaHasStrongRecurringRevenueComponent: String
    var teamCommittedFullTimePostClose: String
    
    // thesis info
    var tractable: Bool
    var democratization: Bool
    var accessToIdleSupply: Bool
    var customerExpansion: Bool
    var networkEffects: Bool
    var bizDevInnovation: Bool
    var competeWithNonConsumption: Bool
    var thesisCounter: Int
    
    // talent info - founder
    var founderStrengthIT: String
    var founderStrengthSales: String
    var founderStrengthMarketing: String
    var founderStrengthHustler: String
    var founderStrengthLearner: String
    var foundStoryStoryTellingAbility: String
    var foundDecisionMakingLogic: String
    var founderCustomerObsessed: String
    var founderDomainExpertise: String

    
    // talent info - team
    var teamStrongTechnicalBuilder: String
    var teamStrongBDLeader: String

    // idea / marketplace
    var clearProblemDefinition: String
    var largeGrowingTamSamSom: String
    var validRealMoat: String
    var strongBeachHead: String
    var ableToBridgeTamSam: String
    var tenYearTest: String
    var clearUserBuyer: String
    var signularFocusedModel: String
    var definedSuccessMetrics: String
    var favorableMarketTrend: String
    var customerBudgetLineItem: String
    
    // execution
    var coreOfferingInHouse: String
    var highUserEngagement: String
    var highSomTraction: String
    var lowChurn: String
    var strongMarketingAdoptionPlan: String
    var fundingProvidesRunway: String

    // diligence - business
    var useCaseSupport: Bool
    var technicalDifferentiation: Bool
    var teamBackground: Bool
    var marketAnalysis: Bool
    var revenueModel: Bool
    var customerAcquisition: Bool
    var financialReview: Bool
    var riskAnalysis: Bool
    
    // diligence - legal
    var charterDocuments: Bool
    var boardMinutes: Bool
    var stockCapTable: Bool
    var regulatory: Bool
    var intellectualProperty: Bool
    var managementEmployee: Bool
    var financialAudit: Bool
    
    // pipeline status
    var preScreen: Bool
    var scorecard: Bool
    var diligence: Bool
    var portfolio: Bool
    var pass: Bool
    var fail: Bool
    var exit: Bool
    
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
        pass: Bool,
        fail: Bool,
        exit: Bool
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
        self.iot = iot
        self.midwest = midwest
        self.leadInvestor = leadInvestor
        self.preSeedUnder6M = preSeedUnder6M
        self.raiseUnder1M = raiseUnder1M
        
        // non-negotiables
        self.founderRightPersonToAddressProblem = ""
        self.founderIsResponsive = ""
        self.ideaHasStrongRecurringRevenueComponent = ""
        self.teamCommittedFullTimePostClose = ""
        
        // thesis info
        self.tractable = tractable
        self.democratization = democratization
        self.accessToIdleSupply = accessToIdleSupply
        self.customerExpansion = customerExpansion
        self.networkEffects = networkEffects
        self.bizDevInnovation = bizDevInnovation
        self.competeWithNonConsumption = competeWithNonConsumption
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
        self.useCaseSupport = useCaseSupport
        self.technicalDifferentiation = technicalDifferentiation
        self.teamBackground = teamBackground
        self.marketAnalysis = marketAnalysis
        self.revenueModel = revenueModel
        self.customerAcquisition = customerAcquisition
        self.financialReview = financialReview
        self.riskAnalysis = riskAnalysis
        
        // diligence - legal
        self.charterDocuments = charterDocuments
        self.boardMinutes = boardMinutes
        self.stockCapTable = stockCapTable
        self.regulatory = regulatory
        self.intellectualProperty = intellectualProperty
        self.managementEmployee = managementEmployee
        self.financialAudit = financialAudit
        
        // pipeline status
        self.preScreen = preScreen
        self.scorecard = scorecard
        self.diligence = diligence
        self.portfolio = portfolio
        self.pass = pass
        self.fail = fail
        self.exit = exit
    } // end init()

// ---------------------------------------------------------- Persistence
    
    static let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
    static let archiveCompaniesURL = documentsDirectory.appendingPathComponent("companies").appendingPathExtension("plist")

    static let archiveLeadsURL = documentsDirectory.appendingPathComponent("leads").appendingPathExtension("plist")

    static let archivePreScreenURL = documentsDirectory.appendingPathComponent("prescreen").appendingPathExtension("plist")

        static let archiveScorecardURL = documentsDirectory.appendingPathComponent("scorecard").appendingPathExtension("plist")

    static let archiveDiligenceURL = documentsDirectory.appendingPathComponent("diligence").appendingPathExtension("plist")

    static let archivePortfolioURL = documentsDirectory.appendingPathComponent("portfolio").appendingPathExtension("plist")

        static let archivePassURL = documentsDirectory.appendingPathComponent("pass").appendingPathExtension("plist")
    
    
    // -------- SaveToFile
    
    static func saveCompaniesToFile(companies: [Company]){
        let propertyListEncoder = PropertyListEncoder()
        let encodedCompanies = try? propertyListEncoder.encode(companies)
        try? encodedCompanies?.write(to: archiveCompaniesURL, options: .noFileProtection)
    } // end saveCompaniesToFile()

    static func saveLeadsToFile(leads: [Company]){
        let propertyListEncoder = PropertyListEncoder()
        let encodedCompanies = try? propertyListEncoder.encode(leads)
        try? encodedCompanies?.write(to: archiveLeadsURL, options: .noFileProtection)
    } // end saveLeadsToFile()
    
    static func savePrescreenedToFile(preScreened: [Company]){
        let propertyListEncoder = PropertyListEncoder()
        let encodedCompanies = try? propertyListEncoder.encode(preScreened)
        try? encodedCompanies?.write(to: archivePreScreenURL, options: .noFileProtection)
    } // end savePreScreenedToFile()

    static func saveScorecardToFile(scorecard: [Company]){
        let propertyListEncoder = PropertyListEncoder()
        let encodedCompanies = try? propertyListEncoder.encode(scorecard)
        try? encodedCompanies?.write(to: archiveScorecardURL, options: .noFileProtection)
    } // end saveScorecardToFile()

    static func saveDiligenceToFile(diligence: [Company]){
        let propertyListEncoder = PropertyListEncoder()
        let encodedCompanies = try? propertyListEncoder.encode(diligence)
        try? encodedCompanies?.write(to: archiveDiligenceURL, options: .noFileProtection)
    } // end saveDiligenceToFile()

    static func savePortfolioToFile(portfolio: [Company]){
        let propertyListEncoder = PropertyListEncoder()
        let encodedCompanies = try? propertyListEncoder.encode(portfolio)
        try? encodedCompanies?.write(to: archivePortfolioURL, options: .noFileProtection)
    } // end savePortfolioToFile()

    static func savePassToFile(pass: [Company]){
        let propertyListEncoder = PropertyListEncoder()
        let encodedCompanies = try? propertyListEncoder.encode(pass)
        try? encodedCompanies?.write(to: archivePassURL, options: .noFileProtection)
    } // end savePassToFile()

    // -------- loadFromFile
    
    static func loadCompaniesFromFile() -> [Company]? {
        let propertyListDecoder = PropertyListDecoder()
        // attempts to a URL if data already exists
        if let retrievedCompaniesData = try? Data(contentsOf: archiveCompaniesURL) {
            let decodedCompanies = try? propertyListDecoder.decode([Company].self, from: retrievedCompaniesData)
            // if the data exists, return the existing data
            return decodedCompanies!}
        // else call the sampleCompanies and return the starter data
        return sampleCompanies()
    } // end loadCompaniesFromFile
    
    static func loadLeadsFromFile() -> [Company]? {
        let propertyListDecoder = PropertyListDecoder()
        // attempts to a URL if data already exists
        if let retrievedLeadsData = try? Data(contentsOf: archiveLeadsURL) {
            let decodedLeads = try? propertyListDecoder.decode([Company].self, from: retrievedLeadsData)
            // if the data exists, return the existing data
            return decodedLeads!}
        // else call the sampleCompanies and return the starter data
        return sampleLeads()
    } // end loadCompaniesFromFile
    
    static func loadPrescreenFromFile() -> [Company]? {
        let propertyListDecoder = PropertyListDecoder()
        // attempts to a URL if data already exists
        if let retrievedPrescreenData = try? Data(contentsOf: archivePreScreenURL) {
            let decodedPrescreen = try? propertyListDecoder.decode([Company].self, from: retrievedPrescreenData)
            // if the data exists, return the existing data
            return decodedPrescreen!}
        // else call the sampleCompanies and return the starter data
        return samplePrescreen()
    } // end loadPrescreenFromFile

    static func loadScorecardFromFile() -> [Company]? {
        let propertyListDecoder = PropertyListDecoder()
        // attempts to a URL if data already exists
        if let retrievedScorecardData = try? Data(contentsOf: archiveScorecardURL) {
            let decodedScorecard = try? propertyListDecoder.decode([Company].self, from: retrievedScorecardData)
            // if the data exists, return the existing data
            return decodedScorecard!}
        // else call the sampleCompanies and return the starter data
        return sampleScorecard()
    } // end loadScorecardFromFile

    static func loadDiligenceFromFile() -> [Company]? {
        let propertyListDecoder = PropertyListDecoder()
        // attempts to a URL if data already exists
        if let retrievedDiligenceData = try? Data(contentsOf: archiveDiligenceURL) {
            let decodedDiligence = try? propertyListDecoder.decode([Company].self, from: retrievedDiligenceData)
            // if the data exists, return the existing data
            return decodedDiligence!}
        // else call the sampleCompanies and return the starter data
        return sampleDiligence()
    } // end loadDiligenceFromFile
    
    static func loadPortfolioFromFile() -> [Company]? {
        let propertyListDecoder = PropertyListDecoder()
        // attempts to a URL if data already exists
        if let retrievedPortfolioData = try? Data(contentsOf: archivePortfolioURL) {
            let decodedPortfolio = try? propertyListDecoder.decode([Company].self, from: retrievedPortfolioData)
            // if the data exists, return the existing data
            return decodedPortfolio!}
        // else call the sampleCompanies and return the starter data
        return samplePortfolio()
    } // end loadPortfolioFromFile

    static func loadPassFromFile() -> [Company]? {
        let propertyListDecoder = PropertyListDecoder()
        // attempts to a URL if data already exists
        if let retrievedPassData = try? Data(contentsOf: archivePassURL) {
            let decodedPass = try? propertyListDecoder.decode([Company].self, from: retrievedPassData)
            // if the data exists, return the existing data
            return decodedPass!}
        // else call the sampleCompanies and return the starter data
        return sampleCompanies()
    } // end loadPassFromFile
    
    
    // ------------------------------------------- sample Company array
    
    static func sampleCompanies() -> [Company]{
        let sampleCompanies: [Company] = [
                        Company(name: "Sample Company", description: "A good company to invest in", city: "Chicago", state: "IL", website: "SampleCompany.com", industry: "Education", agent: "Kenn Freeman", referral: true, strongReferral: true, priority: true, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: false, scorecard: false, diligence: false, portfolio: false, pass: false, fail: false, exit: false)
        ]
        return sampleCompanies
    } // end sampleCompanies()

// ------------------------------------------- sample Lead array
    static func sampleLeads() -> [Company]{
        let sampleLeads: [Company] = [
            Company(name: "Sample Company", description: "A good company to invest in", city: "Chicago", state: "IL", website: "SampleCompany.com", industry: "Education", agent: "Kenn Freeman", referral: true, strongReferral: true, priority: true, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: false, scorecard: false, diligence: false, portfolio: false, pass: false, fail: false, exit: false),
            Company(name: "Pay ExZachly", description: "Find the deepest dining discounts and pay exactly what you want (not much)", city: "Chicago", state: "IL", website: "PayExZackly.com", industry: "Discount distrubution", agent: "Kenn Freeman", referral: true, strongReferral: true, priority: true, email1Sent: true, responseUnder24Hours: true, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: false, scorecard: false, diligence: false, portfolio: false, pass: false, fail: false, exit: false),
            Company(name: "Hill-Me Hill-my", description: "Universal Turkish Translator", city: "Chicago", state: "IL", website: "MeMyTranlators.com", industry: "Education", agent: "LaSandra Skinner", referral: true, strongReferral: true, priority: true, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: false, scorecard: false, diligence: false, portfolio: false, pass: false, fail: false, exit: false),
            Company(name: "ZoXa Design Studio", description: "Interactive and immersive game design firm", city: "Chicago", state: "IL", website: "PlayZoXaGames.com", industry: "Gaming", agent: "LaSandra Skinner", referral: true, strongReferral: true, priority: true, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: false, scorecard: false, diligence: false, portfolio: false, pass: false, fail: false, exit: false),
            Company(name: "Pee On Me", description: "Tracking the flow when you go", city: "Chicago", state: "IL", website: "PeeOnMe.com", industry: "Gaming", agent: "Kenn Freeman", referral: true, strongReferral: true, priority: true, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: false, scorecard: false, diligence: false, portfolio: false, pass: false, fail: false, exit: false)]
    return sampleLeads
 } // end sampleLeads()

    
// ------------------------------------------- sample Prescreen array
    static func samplePrescreen() -> [Company]{
        let samplePrescreen: [Company] = [
            
             Company(name: "How'u FeeLin", description: "Mood tracker", city: "Chicago", state: "IL", website: "AllTheFeels.com", industry: "Healthcare / Mental Health", agent: "Kenn Freeman", referral: true, strongReferral: false, priority: false, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: true, leadInvestor: true, preSeedUnder6M: true, raiseUnder1M: true, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: true, scorecard: false, diligence: false, portfolio: false, pass: false, fail: false, exit: false),
            Company(name: "Mac Safety", description: "Trades project safety training and tracking", city: "Chicago", state: "IL", website: "MacMax.com", industry: "Regulatory", agent: "Kenn Freeman", referral: true, strongReferral: false, priority: false, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: true, leadInvestor: false, preSeedUnder6M: true, raiseUnder1M: true, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: true, scorecard: false, diligence: false, portfolio: false, pass: false, fail: false, exit: false)
        ]
        return samplePrescreen
    } // end samplePrescreen()
    
    // ------------------------------------------- sample Scorecard array
    static func sampleScorecard() -> [Company]{
        let sampleScorecard: [Company] = [
            
            Company(name: "Ozz Mosis", description: "Music multimedia platform that soaks your soul", city: "Chicago", state: "IL", website: "OzzMosis.com", industry: "Entertainment", agent: "LaSandra Skinner", referral: true, strongReferral: false, priority: false, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: true, leadInvestor: true, preSeedUnder6M: true, raiseUnder1M: true, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: true, accessToIdleSupply: false, customerExpansion: false, networkEffects: true, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: true, scorecard: true, diligence: false, portfolio: false, pass: false, fail: false, exit: false),
            Company(name: "aElvin Notes", description: "Midfulness repository and reflection tool", city: "Chicago", state: "IL", website: "Appreciated.com", industry: "Healthcare / Mental Health", agent: "Kenn Freeman", referral: true, strongReferral: false, priority: false, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: true, leadInvestor: false, preSeedUnder6M: true, raiseUnder1M: true, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: true, scorecard: true, diligence: false, portfolio: false, pass: false, fail: false, exit: false),
            Company(name: "Deals By Dhruvil", description: "Proximity based hyper local job board and deals", city: "Chicago", state: "IL", website: "Appreciated.com", industry: "Healthcare / Mental Health", agent: "LaSandra Skinner", referral: true, strongReferral: false, priority: false, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: true, leadInvestor: false, preSeedUnder6M: true, raiseUnder1M: true, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: true, scorecard: true, diligence: false, portfolio: false, pass: false, fail: false, exit: false)
        ]
        return sampleScorecard
    } // end sampleScorecard()
    
    // ------------------------------------------- sample Diligence array
    static func sampleDiligence() -> [Company]{
        let sampleDiligence: [Company] = [
            
            Company(name: "Peterbrook Farms", description: "Farm to front door delivery service", city: "Chicago", state: "IL", website: "FreshFarmFood.com", industry: "Logistics & Distribution", agent: "Kenn Freeman", referral: true, strongReferral: false, priority: false, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: true, leadInvestor: true, preSeedUnder6M: true, raiseUnder1M: true, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: true, scorecard: true, diligence: true, portfolio: false, pass: false, fail: false, exit: false),
            Company(name: "AgTap D2Gsix", description: "Vocal Range Tracker", city: "Chicago", state: "IL", website: "D2G6.com", industry: "Regulatory", agent: "Kenn Freeman", referral: true, strongReferral: false, priority: false, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: true, leadInvestor: false, preSeedUnder6M: true, raiseUnder1M: true, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: true, scorecard: false, diligence: true, portfolio: false, pass: false, fail: false, exit: false)
        ]
        return sampleDiligence
    } // end sampleDiligence()
    
    // ------------------------------------------- sample Portfolio array
    
    static func samplePortfolio() -> [Company]{
        let samplePortfolio: [Company] = [
            Company(name: "Sample Portfolio Company", description: "A good company to invest in", city: "Chicago", state: "IL", website: "SampleCompany.com", industry: "Education", agent: "Kenn Freeman", referral: true, strongReferral: true, priority: true, email1Sent: false, responseUnder24Hours: false, iot: false, midwest: false, leadInvestor: false, preSeedUnder6M: false, raiseUnder1M: false, founderRightPersonToAddressProblem: "", founderIsResponsive: "", ideaHasStrongRecurringRevenueComponent: "", teamCommittedFullTimePostClose: "", tractable: false, democratization: false, accessToIdleSupply: false, customerExpansion: false, networkEffects: false, bizDevInnovation: false, competeWithNonConsumption: false, thesisCounter: 0, founderStrengthIT: "", founderStrengthSales: "", founderStrengthMarketing: "", founderStrengthHustler: "", founderStrengthLearner: "", foundStoryStoryTellingAbility: "", foundDecisionMakingLogic: "", founderCustomerObsessed: "", founderDomainExpertise: "", teamStrongTechnicalBuilder: "", teamStrongBDLeader: "", clearProblemDefinition: "", largeGrowingTamSamSom: "", validRealMoat: "", strongBeachHead: "", ableToBridgeTamSam: "", tenYearTest: "", clearUserBuyer: "", signularFocusedModel: "", definedSuccessMetrics: "", favorableMarketTrend: "", customerBudgetLineItem: "", coreOfferingInHouse: "", highUserEngagement: "", highSomTraction: "", lowChurn: "", strongMarketingAdoptionPlan: "", fundingProvidesRunway: "", useCaseSupport: false, technicalDifferentiation: false, teamBackground: false, marketAnalysis: false, revenueModel: false, customerAcquisition: false, financialReview: false, riskAnalysis: false, charterDocuments: false, boardMinutes: false, stockCapTable: false, regulatory: false, intellectualProperty: false, managementEmployee: false, financialAudit: false, preScreen: true, scorecard: true, diligence: true, portfolio: true, pass: false, fail: false, exit: false)
        ]
        return samplePortfolio
    } // end samplePortfolio()

} // end class Company


