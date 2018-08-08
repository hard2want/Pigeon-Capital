//
//  EditScorecardViewController.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/8/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class EditScorecardViewController: UIViewController {
    
    var score: Company?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var websiteTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var agentTextField: UITextField!
    @IBOutlet weak var industryTextField: UITextField!
    
    @IBOutlet weak var tractableSwitch: UISwitch!
    @IBOutlet weak var democratizationSwitch: UISwitch!
    @IBOutlet weak var idleSupplySwitch: UISwitch!
    @IBOutlet weak var customerExpansionSwitch: UISwitch!
    @IBOutlet weak var networkEffectsSwitch: UISwitch!
    @IBOutlet weak var bdInnovationSwitch: UISwitch!
    @IBOutlet weak var nonConsumptionSwitch: UISwitch!
    @IBOutlet weak var startDiligenceSwitch: UISwitch!
    
    @IBOutlet weak var passSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let company = score {
            nameTextField.text = company.name
            cityTextField.text = company.city
            stateTextField.text = company.state
            websiteTextField.text = company.website
            descriptionTextField.text = company.description
            agentTextField.text = company.agent
            industryTextField.text = company.industry
            tractableSwitch.isOn = company.tractable
            democratizationSwitch.isOn = company.democratization
            idleSupplySwitch.isOn = company.accessToIdleSupply
            customerExpansionSwitch.isOn = company.customerExpansion
            networkEffectsSwitch.isOn = company.networkEffects
            bdInnovationSwitch.isOn = company.bizDevInnovation
            nonConsumptionSwitch.isOn = company.competeWithNonConsumption
            startDiligenceSwitch.isOn = company.diligence
            passSwitch.isOn = company.pass
        } // end if let
    } // end viewDidLoad()
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveUnwind" else {return}
        
        score?.tractable = tractableSwitch.isOn
        score?.democratization = democratizationSwitch.isOn
        score?.accessToIdleSupply = idleSupplySwitch.isOn
        score?.customerExpansion = customerExpansionSwitch.isOn
        score?.networkEffects = networkEffectsSwitch.isOn
        score?.bizDevInnovation = bdInnovationSwitch.isOn
        score?.competeWithNonConsumption = nonConsumptionSwitch.isOn
        score?.pass = passSwitch.isOn
        score?.diligence = startDiligenceSwitch.isOn

    } // end prepare(segue:)
} // end EditScorecardViewController
