//
//  EditPortfolioViewController.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/10/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class EditPortfolioViewController: UIViewController {
    
    var unicorn: Company?

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var failSwitch: UISwitch!
    @IBOutlet weak var exitSwitch: UISwitch!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBAction func fail(_ sender: UISwitch) {
        if failSwitch.isOn == true {
            exitSwitch.isOn = false
            resultImage.image = #imageLiteral(resourceName: "fail")
        }
    }

    @IBAction func exit(_ sender: UISwitch) {
        if exitSwitch.isOn == true {
            failSwitch.isOn = false
            resultImage.image = #imageLiteral(resourceName: "unicorn")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let company = unicorn {
            nameLabel.text = company.name
            failSwitch.isOn = company.fail
            exitSwitch.isOn = company.exit
            
        } // end if let
        
        if unicorn?.fail == true {
            resultImage.image = #imageLiteral(resourceName: "fail")
        }
        
        if unicorn?.exit == true {
            resultImage.image = #imageLiteral(resourceName: "unicorn")
        }
    } // end viewDidLoad
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveUnwind" else{ return }
        
        unicorn?.fail = failSwitch.isOn
        unicorn?.exit = exitSwitch.isOn
        
        if unicorn?.fail == true || unicorn?.exit == true {
            unicorn?.portfolio = false
        }
        
    } // end prepare(for segue:)
} // end EditPortfolioViewController
