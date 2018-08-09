//
//  DiligenceTableViewController.swift
//  Pigeon Capital
//
//  Created by The Duke on 8/9/18.
//  Copyright © 2018 The Duke. All rights reserved.
//

import UIKit

class DiligenceTableViewController: UITableViewController {
    
        var diligence: [Company] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    } // end viewDidLoad()

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    } // end numberOfSections()

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diligence.count
    } // end (numberOfRowsInSection)

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "diligenceCell", for: indexPath) as! DiligenceTableViewCell
         let dillyDilly = self.diligence[indexPath.row]
         cell.update(with: dillyDilly)
        
         if dillyDilly.portfolio == true {
            cell.backgroundColor = .green
         } // end if
        
         return cell
    } // end (cellForRowAt)

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "updateDiligence" {
            let indexPath = tableView.indexPathForSelectedRow!
            let dily = diligence[indexPath.row]
            let nav = segue.destination as! UINavigationController
            let updateDiligenceViewController = nav.topViewController as! EditDiligenceViewController
            updateDiligenceViewController.diligence = dily
        } // end if segue.identifier == "updateDiligence"
     
        func unwindDiligenceToHome(segue: UIStoryboardSegue){
            guard segue.identifier == "unwindDiligenceToHome" else { return }
            let homeViewController = segue.destination as! HomeViewController
            homeViewController.diligence = diligence
        } // end if segue.identifier == "UnwindDiligenceToHome"
    } // end prepare(for segue: )

    @IBAction func unwindToDiligenceTableView(segue: UIStoryboardSegue ){
        
        guard segue.identifier == "saveUnwind" else { return }
        let sourceViewController = segue.source as! EditDiligenceViewController
        
        if let dily = sourceViewController.diligence {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                diligence[selectedIndexPath.row] = dily
                tableView.reloadRows(at: [selectedIndexPath], with: .none)
            } else {
                let newIndexPath = IndexPath(row: diligence.count, section: 0)
                diligence.append(dily)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
            } // end else
        } // end if let company
    } // end unwindToDiligenceTableView(segue: )
} // end DiligenceTableViewController
