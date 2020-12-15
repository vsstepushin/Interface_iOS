//
//  FriendCell.swift
//  VK_user_interface
//
//  Created by Виталий Степушин on 09.12.2020.
//

import UIKit

class FriendCell: UITableViewCell {

   
    @IBOutlet weak var friendName: UILabel!
    @IBOutlet weak var friendAvatar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        }
}
