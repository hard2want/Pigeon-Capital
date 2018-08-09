//
//  DiligenceTableViewCell.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/9/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class DiligenceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityStateSiteLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    func update(with company: Company){
        nameLabel.text = company.name
        cityStateSiteLabel.text = "\(company.city), \(company.state)  \(company.website)  \(company.industry)"
        descriptionLabel.text = company.description
    } // end update(with company: Company)


    override func awakeFromNib() {
        super.awakeFromNib()
    } // end awakeFromNib()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    } // end setSelected()

} // end DiligenceTableViewCell
