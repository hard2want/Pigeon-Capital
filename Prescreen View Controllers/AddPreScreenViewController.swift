//
//  AddPreScreenViewController.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/6/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class AddPreScreenViewController: UIViewController {
    
    var screened: Company?
    
    @IBOutlet weak var companyTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var websiteTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var agentTextField: UITextField!
    @IBOutlet weak var industryTextField: UITextField!
    
    @IBOutlet weak var iotSwitch: UISwitch!
    @IBOutlet weak var midwestSwitch: UISwitch!
    @IBOutlet weak var leadInvestorSwitch: UISwitch!
    @IBOutlet weak var preSeedSwitch: UISwitch!
    @IBOutlet weak var raiseSwitch: UISwitch!
    @IBOutlet weak var scorecardSwitch: UISwitch!
    
    @IBOutlet weak var passSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let company = screened {
            companyTextField.text = company.name
            cityTextField.text = company.city
            stateTextField.text = company.state
            websiteTextField.text = company.website
            descriptionTextField.text = company.description
            agentTextField.text = company.agent
            industryTextField.text = company.industry
            iotSwitch.isOn = company.iot
            midwestSwitch.isOn = company.midwest
            leadInvestorSwitch.isOn = company.leadInvestor
            preSeedSwitch.isOn = company.preSeedUnder6M
            raiseSwitch.isOn = company.raiseUnder1M
            scorecardSwitch.isOn = company.scorecard
            passSwitch.isOn = company.pass
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
        
        screened?.iot = iotSwitch.isOn
        screened?.midwest = midwestSwitch.isOn
        screened?.leadInvestor = leadInvestorSwitch.isOn
        screened?.preSeedUnder6M = preSeedSwitch.isOn
        screened?.raiseUnder1M = raiseSwitch.isOn
        screened?.scorecard = scorecardSwitch.isOn
        screened?.pass = passSwitch.isOn

    } // end prepare()

}
