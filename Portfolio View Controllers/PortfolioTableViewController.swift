//
//  PortfolioTableViewController.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/9/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class PortfolioTableViewController: UITableViewController {
    
    var portfolio: [Company] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    } // end viewDidLoad()

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return portfolio.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "portfolioCell", for: indexPath) as! PortfolioTableViewCell
        let outcome = self.portfolio[indexPath.row]
        cell.update(with: outcome)
        
        if outcome.exit == true {
            cell.backgroundColor = .green
        } // end if
        else if outcome.fail == true {
            cell.backgroundColor = .red
        } else {
            cell.backgroundColor = .none
        }
        return cell
    } // end (cellForRowAt)


    // MARK: - Navigation
// ----- Segue Out
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "updatePortfolio" {
            let indexPath = tableView.indexPathForSelectedRow!
            let funded = portfolio[indexPath.row]
            let nav = segue.destination as! UINavigationController
            let updatePortfolioViewController = nav.topViewController as! EditPortfolioViewController
            updatePortfolioViewController.unicorn = funded
        } // end if segue.identifier == "updateDiligence"
        
        func unwindPortfolioToHome(segue: UIStoryboardSegue){
            guard segue.identifier == "unwindPortfolioToHome" else { return }
            let homeViewController = segue.destination as! HomeViewController
            homeViewController.diligence = portfolio
        } // end if segue.identifier == "UnwindPortfolioToHome"
    } // end prepare(for segue: )

    // ----- unwind In
    @IBAction func unwindToPortfolioTableView(segue: UIStoryboardSegue ){
        
        guard segue.identifier == "saveUnwind" else { return }
        let sourceViewController = segue.source as! EditPortfolioViewController
        
        if let funded = sourceViewController.unicorn {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                portfolio[selectedIndexPath.row] = funded
                tableView.reloadRows(at: [selectedIndexPath], with: .none)
            } else {
                let newIndexPath = IndexPath(row: portfolio.count, section: 0)
                portfolio.append(funded)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
            } // end else
        } // end if let company
    } // end unwindToDiligenceTableView(segue: )
} // end PortfolioTableViewController
