//
//  AllGroupsTableController.swift
//  VK_user_interface
//
//  Created by Виталий Степушин on 10.12.2020.
//

import UIKit


class AllGroupsTableController: UITableViewController {
    var allGroup = [
        "a",
        "b",
        "c",
        "d",
        "f",
        "g",
        "i",
        "k",
        "l",
        "m",
    ]
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        allGroup.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath)
                as? GroupCell
        else { return UITableViewCell() }
        cell.groupName.text = "\(allGroup[indexPath.row])"
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
