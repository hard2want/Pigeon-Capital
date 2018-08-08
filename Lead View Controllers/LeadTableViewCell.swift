//
//  LeadTableViewCell.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/5/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class LeadTableViewCell: UITableViewCell {
    @IBOutlet weak var idNameLabel: UILabel!
    @IBOutlet weak var cityStateSiteLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func update(with company: Company){
        idNameLabel.text = company.name
        cityStateSiteLabel.text = "\(company.city), \(company.state)  \(company.website)"
        descriptionLabel.text = company.description
        
    } // end update(with company: Company)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    } // end awakeFromNib()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    } // end setSelected()

} // end class LeadTabelViewCell
