//
//  ScorecardTableViewController.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/8/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class ScorecardTableViewController: UITableViewController {

    var scorecard: [Company] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    } // end viewDidLoad()


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    } // end numberOfSections

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scorecard.count
    } // end numberOfRowsInSection

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scorecardCell", for: indexPath) as! ScorecardTableViewCell
        let score = self.scorecard[indexPath.row]
        cell.update(with: score)
        
        if score.diligence == true {
            cell.backgroundColor = .green
        } // end if
        
        return cell
    } // end cellForRowAt
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "updateScorecard" {
            let indexPath = tableView.indexPathForSelectedRow!
            let score = scorecard[indexPath.row]
            let nav = segue.destination as! UINavigationController
            let updateScorecardViewController = nav.topViewController as! EditScorecardViewController
            updateScorecardViewController.score = score
        } // end if segue.identifier == "updateScorecard"

        func unwindScorecardToHome(segue: UIStoryboardSegue){
            guard segue.identifier == "unwindScorecardToHome" else { return }
            let homeViewController = segue.destination as! HomeViewController
            homeViewController.scorecard = scorecard
        } // end if segue.identifier == "UnwindScorecardToHome"
    } // end prepare(segue:)

    @IBAction func unwindToScorecardTableView(segue: UIStoryboardSegue ){
        
        guard segue.identifier == "saveUnwind" else { return }
        let sourceViewController = segue.source as! EditScorecardViewController
        
        if let scored = sourceViewController.score {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                scorecard[selectedIndexPath.row] = scored
                tableView.reloadRows(at: [selectedIndexPath], with: .none)
            } else {
                let newIndexPath = IndexPath(row: scorecard.count, section: 0)
                scorecard.append(scored)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
            } // end else
        } // end if let company
    } // end unwindToScorecardTableView(segue: )

    
    
} // end ScorecardTableViewController
