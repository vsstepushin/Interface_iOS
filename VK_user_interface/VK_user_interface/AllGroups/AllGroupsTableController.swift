//
//  AllGroupsTableController.swift
//  VK_user_interface
//
//  Created by Виталий Степушин on 10.12.2020.
//

import UIKit


class AllGroupsTableController: UITableViewController {
    
    var allGroup: [Groups] = [
        Groups(nameGroup: "GB", avatarGroup: "gbAvatar"),
        Groups(nameGroup: "VK", avatarGroup: "vk2"),
        Groups(nameGroup: "Viber", avatarGroup: "viberAvatar"),
        Groups(nameGroup: "Instagramm", avatarGroup: "instagrammAvatar"),
        Groups(nameGroup: "Telegram", avatarGroup: "telegramAvatar"),
        Groups(nameGroup: "Skype", avatarGroup: "skypeAvatar"),
        Groups(nameGroup: "Discord", avatarGroup: "discordAvatar"),
        Groups(nameGroup: "Zoom", avatarGroup: "zoomAvatar"),
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
        let group = allGroup[indexPath.row]
        cell.groupName.text = group.nameGroup
        cell.groupAvatar.image = group.avatarGroup
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
